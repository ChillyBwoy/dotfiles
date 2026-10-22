local MODIFIERS = { "cmd", "alt", "ctrl" }
local SIZE_STEP = 0.1
local MIN_SIZE_RATIO = 0.25
local MAX_SIZE_RATIO = 1

local function resizeWindow(direction)
  local window = hs.window.focusedWindow()

  if not window then
    return
  end

  local screen = window:screen()

  if not screen then
    return
  end

  local screenFrame = screen:frame()
  local windowFrame = window:frame()
  local widthRatio = windowFrame.w / screenFrame.w
  local heightRatio = windowFrame.h / screenFrame.h
  local currentRatio = (widthRatio + heightRatio) / 2
  local sizeRatio = math.max(MIN_SIZE_RATIO, math.min(MAX_SIZE_RATIO, currentRatio + direction * SIZE_STEP))
  local width = screenFrame.w * sizeRatio
  local height = screenFrame.h * sizeRatio

  window:setFrame({
    x = windowFrame.x,
    y = windowFrame.y,
    w = width,
    h = height,
  })
end

hs.hotkey.bind(MODIFIERS, "-", function() resizeWindow(-1) end)
hs.hotkey.bind(MODIFIERS, "=", function() resizeWindow(1) end)
