--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-16 15:17:39
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-08-16 15:17:42
FilePath: \Auto_test_tool\mudlet\main.lua
Description:  自动测试脚本主程序
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

file = io.open(Con_path .. "00/01_Init_Combat/01_Init_Combat.tt", 'r')
io.input(file)
line = io.read()
while(line) do
    Log.echo(line,5)
    line = io.read()
end
io.close(file)

Log.echo("诡秘世界自动测试脚本加载完成",0)
