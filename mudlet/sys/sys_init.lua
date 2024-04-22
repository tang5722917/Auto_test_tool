--[[
Author: Donald duck tang5722917@163.com
Date: 2023-06-15 20:03:29
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-06-15 20:04:03
FilePath: \yh-mudlet\Sys\sys_init.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

Sys_init = Sys_init or {}

Sys_init.Task_list = Task_list("System task list")
Log.echo("Build System task list", 1)

Sys_init.Init_task = Task("System initial task")
Log.echo("Build System initial task", 1)

Sys_init.Init_timer = Timer("System initial timer")

Sys_init.Init_timer:tempTimer(fast_time,function() raiseEvent("CMD_clk_event_fast", true) end, true)
--  一般send指令节拍
Sys_init.Init_timer:tempTimer(normal_time,function() raiseEvent("CMD_clk_event_normal", true) end, true)
--   系统处理节拍
Sys_init.Init_timer:tempTimer(slow_time,function() raiseEvent("CMD_clk_event_slow", true) end, true)
--   监测节拍
Sys_init.Init_timer:tempTimer(slow_time1,function() raiseEvent("CMD_clk_event_slow1", true) end, true)
--   监测节拍
Sys_init.Init_timer:tempTimer(slow_time2,function() raiseEvent("CMD_clk_event_slow2", true) end, true)
--   监测节拍
Sys_init.Init_timer:tempTimer(slow_time3,function() raiseEvent("CMD_clk_event_slow3", true) end, true)

Sys_init.Init_task:add_timer_obj(Sys_init.Init_timer)
Log.echo("系统时钟加载成功", 1)

Sys_init.Init_task:start()
Log.echo("系统初始任务启动", 1)
