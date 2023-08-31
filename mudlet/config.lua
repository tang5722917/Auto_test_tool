--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-16 15:29:03
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-08-16 15:29:12
FilePath: \Auto_test_tool\mudlet\sys\config.lua
Description:  测试配置文件
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]


--调试log输出等级 0最低 5最高
Debug_log_rank = 5


-- 系统时钟设置
fast_time = 0.1      --0.1s  系统处理节拍
normal_time = 0.5    --0.5  一般send指令节拍
slow_time = 1        --1s  系统处理节拍
slow_time1 = 60      --1min  监测节拍
slow_time2 = 600     --10min  监测节拍
slow_time3 = 3600 --1h  监测节拍


-- UI 设置
HP_UI_Auto_time = 60  --UI HP 数据自动刷新时间
