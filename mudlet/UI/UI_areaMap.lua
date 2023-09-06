--[[
Author: Donald duck tang5722917@163.com
Date: 2023-09-04 11:36:47
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 18:52:59
FilePath: \Auto_test_tool\mudlet\UI\UI_areaMap.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

local w,h = getMainWindowSize()
miniMap = Adjustable.Container:new({
  name = "miniMap", 
  x = "0", y = h/20, 
  fontSize = 11,
  width = "81c", height = "15c", 
  locked = true,
})
areaMap = Geyser.MiniConsole:new({
  name ="areaMap",
  x="0", y="0",
  autoWrap = true,
  color = "white",
  scrollBar = false,
  -- fontSize = 10,
  width="100%", height="100%",
}, miniMap)

areaMap:clear()
--miniMap:minimize()

-- 在触发器中增加以下代码
-- selectCurrentLine()
-- copy()
-- areaMap:appendBuffer()
-- deleteLine()
-- miniMap:restore()
