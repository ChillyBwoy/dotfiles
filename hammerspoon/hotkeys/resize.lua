local MODIFIERS = { "cmd", "alt", "ctrl" }
local SIZE_STEP = 0.05
local MIN_SIZE_RATIO = 0.1
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
  local centerX = windowFrame.x + windowFrame.w / 2
  local centerY = windowFrame.y + windowFrame.h / 2

  window:setFrame({
    x = centerX - width / 2,
    y = centerY - height / 2,
    w = width,
    h = height,
  })
end

local function resizeWindowEdge(edge, direction)
  local window = hs.window.focusedWindow()

  if not window then
    return
  end

  local screen = window:screen()

  if not screen then
    return
  end

  local screenFrame = screen:frame()
  local frame = window:frame()
  local step = screenFrame.w * SIZE_STEP
  local minWidth = screenFrame.w * MIN_SIZE_RATIO

  if edge == "left" then
    local right = frame.x + frame.w
    local newX = math.max(screenFrame.x, math.min(right - minWidth, frame.x + direction * step))
    frame.x = newX
    frame.w = right - newX
  else
    local screenRight = screenFrame.x + screenFrame.w
    local newRight = math.max(frame.x + minWidth, math.min(screenRight, frame.x + frame.w + direction * step))
    frame.w = newRight - frame.x
  end

  window:setFrame(frame)
end

hs.hotkey.bind(MODIFIERS, "-", function() resizeWindow(-1) end)
hs.hotkey.bind(MODIFIERS, "=", function() resizeWindow(1) end)
hs.hotkey.bind(MODIFIERS, "[", function() resizeWindowEdge("left", -1) end)
hs.hotkey.bind(MODIFIERS, ";", function() resizeWindowEdge("left", 1) end)
hs.hotkey.bind(MODIFIERS, "]", function() resizeWindowEdge("right", 1) end)
hs.hotkey.bind(MODIFIERS, "'", function() resizeWindowEdge("right", -1) end)
