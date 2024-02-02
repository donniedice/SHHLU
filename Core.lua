-- v1.0.9

-- Event function level up
-- This function creates a frame that listens for the "PLAYER_LEVEL_UP" event and plays a custom sound effect when triggered.

local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\SHHLU\\SHHLU.ogg", "Master")
end)

-- Mute default level up sound
-- This function creates a frame that listens for the "ADDON_LOADED" event and mutes the default level up sound when triggered.

local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Chat Message
-- This function creates a frame that listens for the "PLAYER_LOGIN" event and prints a chat message when triggered.

local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cff1e3ce1SHHLU - Sonic The Hedgehog Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
