--[[
Author: Donald duck tang5722917@163.com
Date: 2023-09-04 11:36:47
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 18:39:28
FilePath: \Auto_test_tool\mudlet\UI\UI_map_base.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
GUI.Map_Container = Geyser.Container:new({
    name = "GUI.Map_Container", 
    x = 0, 
    y = 0, 
    width = "100%", 
    height = "100%",
  }, GUI.Box1)
  
  GUI.Mapper = Geyser.Mapper:new({
    name = "GUI.Mapper",
    x = 20,
    y = 20,
    width = GUI.Map_Container:get_width() - 40,
    height = GUI.Map_Container:get_height() - 40,
  }, GUI.Map_Container)
  
setMapZoom(13)
openMapWidget()
