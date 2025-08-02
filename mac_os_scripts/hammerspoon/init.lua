local appShortcuts = {
	["1"] = "Ghostty",
	["2"] = "Brave Browser",
  ["3"] = "Spotify",
  ["4"] = "OBS",
}

for key, app in pairs(appShortcuts) do
	hs.hotkey.bind({ "alt" }, key, function()
		hs.application.launchOrFocus(app)
	end)
end
