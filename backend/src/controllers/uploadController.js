const { google } = require("googleapis");
const { OAuth2Client } = require("google-auth-library");
const fs = require("fs");
const VideoManager = require("../models/videoManager");
const youtubeManager = require("../models/youtubeManager");
// const path = require("path");
require("dotenv").config();

// let details = {};
// let tokensGoogle = null;

async function getData(req, res) {
  // details = req.body;
  res.status(200).json({ message: "Data received" });
}

// Set up OAuth2Client with your client ID and client secret
const oauth2Client = new OAuth2Client({
  clientId: process.env.YOUR_CLIENT_ID,
  clientSecret: process.env.YOUR_CLIENT_SECRET,
  redirectUri: process.env.YOUR_REDIRECT_URI,
});

// Get the OAuth2 URL
const authUrl = oauth2Client.generateAuthUrl({
  access_type: "offline",
  scope: "https://www.googleapis.com/auth/youtube.upload",
});

// Endpoint to initiate YouTube authentication // "/initiate-auth",
async function initiateAuth(req, res) {
  res.send(authUrl);
}

async function getYoutubeCodeBackUp(req, res) {
  // console.log("called route ");
  const authorizationCode = req.query.code;
  try {
    const { tokens } = await oauth2Client.getToken(authorizationCode);
    oauth2Client.setCredentials(tokens);
    // tokensGoogle = tokens;
    // const halfPath = path.join(__dirname, "../../public");
    // res.sendFile(`${halfPath}/test.html`);
    // console.log("token", tokens);
    res.redirect(`${process.env.FRONTEND_URL}/admin/upload`);
    // console.log("after end answer");
  } catch (error) {
    console.error(error.message);
  }
}

async function uploadVideo(req, res) {
  const details = req.body;
  // console.log("lolus", req.body);
  try {
    const youtube = google.youtube({
      version: "v3",
      auth: oauth2Client,
    });
    const resUpload = await youtube.videos.insert({
      part: "snippet,status,contentDetails",
      requestBody: {
        snippet: {
          title: `${details.title ?? "Titre générique"}`,
          description: `${details.description ?? "Description générique"}`,
          categoryId: 28,
          tags: details.tags ?? [],
        },
        status: {
          privacyStatus: "unlisted",
        },
      },
      media: {
        body: fs.createReadStream(
          `public/${req.relativePath ?? "uploads/video.mp4"}`
        ),
      },
    });
    const video = {
      title: resUpload.data.snippet.title,
      ytId: resUpload.data.id,
      playlistId: details.playlistId,
      playlistTitle: details.playlistTitle ?? "playlist",
      duration: youtubeManager.convertToTimeFormat(
        resUpload.data.contentDetails.duration
      ), // "10:00"
      publishDate:
        resUpload.data.snippet.publishedAt.split("T")[0] ?? "1986-04-21",
      description:
        resUpload.data.snippet.description?.replace(/['"*`]/g, "") ??
        "sans description",
      isPublic: 1,
      thumbnails: resUpload.data.snippet.thumbnails.high.url,
      tags: resUpload.data.snippet.tags,
    };
    const result = await VideoManager.create(video);
    console.warn(result);
    res.status(200).send(resUpload);
  } catch (error) {
    console.error("Error uploading video:", error.message);
    res.status(500).send("Error uploading video");
  }
}

// Callback endpoint after user grants permissions
async function oAuth2Callback(req, res) {
  const authorizationCode = req.query.code;
  const details = req.body;
  try {
    // Exchange authorization code for access and refresh tokens
    const { tokens } = await oauth2Client.getToken(authorizationCode);
    oauth2Client.setCredentials(tokens);

    // Use the YouTube API to upload the video
    const youtube = google.youtube({
      version: "v3",
      auth: oauth2Client,
    });

    const resUpload = await youtube.videos.insert({
      part: "snippet,status",
      requestBody: {
        snippet: {
          title: `${details.title ?? "Titre générique"}`,
          description: `${details.description ?? "Description générique"}`,
          categoryId: 28,
          tags: details.tags ?? [],
        },
        status: {
          privacyStatus: "unlisted",
        },
      },
      media: {
        body: fs.createReadStream(`${details.filename ?? "uploads/video.mp4"}`), // Adjust the video file path
      },
      onUploadProgress: () => {
        // const progress = (evt.bytesRead / evt.bytesTotal) * 100;
        // console.log(`Uploading... ${progress.toFixed(2)}% complete`);
      },
    });

    // Handle the successful video upload
    // console.log("Video uploaded successfully:", resUpload.data);
    res.redirect(`${process.env.FRONTEND_URL}/admin`).send(resUpload.data);
  } catch (error) {
    console.error("Error uploading video:", error.message);
    res.status(500).send("Error uploading video");
  }
}

module.exports = {
  initiateAuth,
  oAuth2Callback,
  getData,
  getYoutubeCodeBackUp,
  uploadVideo,
};
