Config = Config or {} -- Don't touch

-- =========================IMPORTANT==========================
-- xSound is a required dependancy for this script to work
-- Please download and add the latest version to your server from from the link below:
-- https://github.com/Xogy/xsound/releases/latest

-- sv_config.lua must be configured with a YouTube API key (free) in order for the script to work
-- Text tutorial is available in sv_config.lua

-- Full YouTube API key and custom radio images tutorial can be found on our channel:
-- https://www.youtube.com/@PonziScripts 

-- Please use the FULL youtube.com link for every video & playlist
-- Shortform youtu.be URLs are not supported
-- ============================================================

-- ====================Available Radio List====================
-- "RADIO_01_CLASS_ROCK",              -- Los Santos Rock Radio
-- "RADIO_02_POP",                     -- Non-Stop-Pop FM
-- "RADIO_03_HIPHOP_NEW",              -- Radio Los Santos
-- "RADIO_04_PUNK",                    -- Channel X
-- "RADIO_05_TALK_01",                 -- West Coast Talk Radio
-- "RADIO_06_COUNTRY",                 -- Rebel Radio
-- "RADIO_07_DANCE_01",                -- Soulwax FM
-- "RADIO_08_MEXICAN",                 -- East Los FM
-- "RADIO_09_HIPHOP_OLD",              -- West Coast Classics
-- "RADIO_11_TALK_02",                 -- Blaine County Radio
-- "RADIO_12_REGGAE",                  -- Blue Ark
-- "RADIO_13_JAZZ",                    -- Worldwide FM
-- "RADIO_14_DANCE_02",                -- FlyLo FM
-- "RADIO_15_MOTOWN",                  -- The Lowdown 91.1
-- "RADIO_16_SILVERLAKE",              -- Radio Mirror Park
-- "RADIO_17_FUNK",                    -- Space 103.2
-- "RADIO_18_90S_ROCK",                -- Vinewood Boulevard Radio
-- "RADIO_19_USER",                    -- Self Radio
-- "RADIO_20_THELAB",                  -- The Lab
-- "RADIO_21_DLC_XM17",                -- Blonded Los Santos 97.8 FM
-- "RADIO_22_DLC_BATTLE_MIX1_RADIO",   -- Los Santos Underground Radio
-- "RADIO_23_DLC_XM19_RADIO",          -- iFruit Radio
-- "RADIO_27_DLC_PRHEI4",              -- Still Slipping Los Santos
-- "RADIO_34_DLC_HEI4_KULT",           -- Kult FM
-- "RADIO_35_DLC_HEI4_MLR",            -- The Music Locker
-- "RADIO_36_AUDIOPLAYER",             -- Media Player
-- "RADIO_37_MOTOMAMI",                -- MOTOMAMI Los Santos
-- ============================================================

-- ========================Performance=========================
Config.Debug = false -- Enable or disable printing of processes

Config.CheckUpdates = true -- Enable or disable new update checks

Config.StationTimer = 200 -- Amount of ms in between checks to update custom radio status
-- Less value can increase smoothness but can slight increase client resource usage
-- A value of 200 (5 checks per second) by default reduces usage to 0.00ms-0.01ms on average 
-- with no percieved additional wait time compared to a value of 0 
-- ============================================================

-- =================Custom Radio Display Text==================
Config.ShowCustomRadioText = true -- Overlay the GTA currently playing with song details

-- List of words to detect inside () or []
-- These portion will be ommitted from song title.
-- Ex. "(Official Music Video)" will be removed but "(Remix)" will not.
-- Removes on at least 1 match. Ex. "(Extended Track)" will be removed if "extended" is on the clean list.
-- Will also remove any instances of these words alone in a song title if not in brackets.
Config.TitleCleanUpWordList = {
    "music",
    "video",
    "hd",
    "official",
    "audio",
    "prod",
    "explicit",
    "lyrics",
    "visualizer",
    "extended",
    -- Add more words/phrases as needed
}

-- Patterns to match
Config.TitleCleanUpMatchList = {
    "%[(.-)%]", --  [Official Video]
    "%((.-)%)", --  (Official Video)
}
-- ============================================================

-- =======================Radio Options========================
Config.ShufflePlaylists = true -- Enable random order for playlist broadcast

Config.RadioStations = { -- List of radio stations to supersede (override)
    {
        supersede = 'RADIO_08_MEXICAN', -- GTA station to supersede
        playlists = { -- Playlist links
            'https://youtube.com/playlist?list=PL0ZofDWNZQUsY3CLmXY3YOgBZY0ur76Lb&si=y0wOHXKOTexdLZV4'
        },
        videos = {}, -- Individual video links
		-- Empty list if no individual videos for this station
        volume = 1.0, -- 1.0 is a similar volume to the default stations for most videos
		-- Volume is also reactive to user's music settings
		-- This value is a multiplier of the base volume and can be turned up or down
        name = 'Copyright Free FM'
    },
    {
        supersede = 'RADIO_20_THELAB',
        playlists = {},
		-- Empty list if no playlists for this station
        videos = {
            'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
        },
        volume = 1.0,
        name = 'Rolling Radio'
    },
	-- Stations support playlists, videos and a combination of both
}

Config.DisabledStations = { -- List of GTA stations to remove from the radio wheel
    -- "RADIO_01_CLASS_ROCK",
    -- "RADIO_20_THELAB",
    -- "RADIO_21_DLC_XM17",
}
-- ============================================================
