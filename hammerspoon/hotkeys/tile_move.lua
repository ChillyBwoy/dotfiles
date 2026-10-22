local MODIFIERS = { "cmd", "alt", "ctrl" }

local function tileWindow(xPosition, yPosition, widthRatio, heightRatio)
  local window = hs.window.focusedWindow()

  if not window then
    return
  end

  local screen = window:screen()

  if not screen then
    return
  end

  local screenFrame = screen:frame()

  window:setFrame({
    x = screenFrame.x + screenFrame.w * xPosition,
    y = screenFrame.y + screenFrame.h * yPosition,
    w = screenFrame.w * widthRatio,
    h = screenFrame.h * heightRatio,
  })
end

hs.hotkey.bind(MODIFIERS, "Left", function() tileWindow(0, 0, 0.5, 1) end)
hs.hotkey.bind(MODIFIERS, "Right", function() tileWindow(0.5, 0, 0.5, 1) end)
hs.hotkey.bind(MODIFIERS, "Up", function() tileWindow(0, 0, 1, 0.5) end)
hs.hotkey.bind(MODIFIERS, "Down", function() tileWindow(0, 0.5, 1, 0.5) end)
