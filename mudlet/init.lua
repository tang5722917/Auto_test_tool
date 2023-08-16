--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-16 15:08:55
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-08-16 15:09:06
FilePath: \Auto_test_tool\mudlet\init.lua
Description: lua文件导入
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
-- 定义重启事件
registerAnonymousEventHandler("ReloadEvent", "ReloadEvent")
function ReloadEven(event)
    SysReset()
    dofile(Lua_path..'init.lua')
end

--Lua_path LUA 环境目录
dofile(Lua_path .. "config.lua")
dofile(Lua_path .. "sys/SysLog.lua")
dofile(Lua_path .. "sys/SysKey.lua")
dofile(Lua_path .. "sys/SysReset.lua")

dofile(Lua_path .. "main.lua")
