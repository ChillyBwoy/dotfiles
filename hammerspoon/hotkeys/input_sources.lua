local MODIFIERS = { "cmd", "alt" }

local INPUT_SOURCES = {
  en = "com.apple.keylayout.US",
  ru = "com.apple.keylayout.Russian",
  ja = "com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese",
}

local function switchInputSource(language)
  if not hs.keycodes.currentSourceID(INPUT_SOURCES[language]) then
    hs.alert.show(string.format("入力ソースを切り替えられませんでした: %s", language))
  end
end

hs.hotkey.bind(MODIFIERS, "1", function() switchInputSource("en") end)
hs.hotkey.bind(MODIFIERS, "2", function() switchInputSource("ru") end)
hs.hotkey.bind(MODIFIERS, "3", function() switchInputSource("ja") end)

