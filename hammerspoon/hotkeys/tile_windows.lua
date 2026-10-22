local MODIFIERS = { "ctrl", "alt", "cmd" }
local CENTERED_WINDOW_AREA_RATIO = 0.5

local function tileVisibleWindows()
  local windowsByScreen = {}

  for _, window in ipairs(hs.window.visibleWindows()) do
    if window:isStandard() then
      local screen = window:screen()

      if screen then
        local screenId = screen:id()
        windowsByScreen[screenId] = windowsByScreen[screenId] or {
          screen = screen,
          windows = {},
        }

        table.insert(windowsByScreen[screenId].windows, window)
      end
    end
  end

  local gap = 8
  local tiledCount = 0

  for _, group in pairs(windowsByScreen) do
    local windows = group.windows
    local count = #windows
    local screenFrame = group.screen:frame()
    local columns = math.ceil(math.sqrt(count))
    local rows = math.ceil(count / columns)
    local cellWidth = screenFrame.w / columns
    local cellHeight = screenFrame.h / rows

    for index, window in ipairs(windows) do
      local column = (index - 1) % columns
      local row = math.floor((index - 1) / columns)

      window:setFrame({
        x = screenFrame.x + column * cellWidth + gap,
        y = screenFrame.y + row * cellHeight + gap,
        w = cellWidth - gap * 2,
        h = cellHeight - gap * 2,
      })

      tiledCount = tiledCount + 1
    end
  end

  hs.alert.show(string.format("タイル表示したウィンドウ数: %d", tiledCount))
end

local function centerFocusedWindow()
  local window = hs.window.focusedWindow()

  if not window then
    return
  end

  local screen = window:screen()

  if not screen then
    return
  end

  local screenFrame = screen:frame()
  local sizeRatio = math.sqrt(CENTERED_WINDOW_AREA_RATIO)
  local width = screenFrame.w * sizeRatio
  local height = screenFrame.h * sizeRatio

  window:setFrame({
    x = screenFrame.x + (screenFrame.w - width) / 2,
    y = screenFrame.y + (screenFrame.h - height) / 2,
    w = width,
    h = height,
  })
end

hs.hotkey.bind(MODIFIERS, "M", tileVisibleWindows)
hs.hotkey.bind(MODIFIERS, "C", centerFocusedWindow)
