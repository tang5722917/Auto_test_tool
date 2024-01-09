--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-16 15:17:39
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-08-16 15:17:42
FilePath: \Auto_test_tool\mudlet\main.lua
Description:  自动测试脚本主程序
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

Read_mud_text(Con_path .. "00/01_Init_Combat/01_Init_Combat.tt")

local test_t = Test("test1")
local t1 = Action("Action", test_t)
t1:add_timer(2)
test_t:add_action(t1,test_t)
t1:start()
Log.echo("诡秘世界自动测试脚本加载完成",0)
