Config = Config or {} -- Don't touch

-- =======================Google API Key=======================
-- A Google API Key is needed to use the YouTube Data API and get videos from playlists
-- This does not grant access to any Google account information or data
-- Your key is stored only in this file and used on the server side - never shared accross the internet

-- Steps:
-- Go to https://console.cloud.google.com/ and create a new project.
-- Enable YouTube Data API v3 for the project. (https://console.cloud.google.com/apis/library/youtube.googleapis.com)
-- Create API credentials (API Key) for the project and choose "Public data" as the type. (https://console.cloud.google.com/apis/credentials/wizard?api=youtube.googleapis.com)
-- Copy your API key and replace to the following YOUR_GOOGLE_API_KEY
Config.GoogleApiKey = 'YOUR_GOOGLE_API_KEY'
-- ============================================================
