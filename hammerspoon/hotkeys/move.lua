local MOVE_STEP = 50
local MODIFIERS = { "cmd", "alt", "ctrl" }

local function moveWindow(xDirection, yDirection)
  local window = hs.window.focusedWindow()

  if not window then
    return
  end

  local frame = window:frame()
  frame.x = frame.x + xDirection * MOVE_STEP
  frame.y = frame.y + yDirection * MOVE_STEP
  window:setFrame(frame)
end

hs.hotkey.bind(MODIFIERS, "Y", function() moveWindow(-1, -1) end)
hs.hotkey.bind(MODIFIERS, "K", function() moveWindow(0, -1) end)
hs.hotkey.bind(MODIFIERS, "U", function() moveWindow(1, -1) end)
hs.hotkey.bind(MODIFIERS, "H", function() moveWindow(-1, 0) end)
hs.hotkey.bind(MODIFIERS, "L", function() moveWindow(1, 0) end)
hs.hotkey.bind(MODIFIERS, "B", function() moveWindow(-1, 1) end)
hs.hotkey.bind(MODIFIERS, "J", function() moveWindow(0, 1) end)
hs.hotkey.bind(MODIFIERS, "N", function() moveWindow(1, 1) end)

