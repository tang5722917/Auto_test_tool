--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 17:37:05
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2024-01-09 09:24:08
FilePath: \Auto_test_tool\mudlet\Object\Timer_Base.lua
Description: 
Copyright (c) 2024 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

-- 元类
Object:subclass("Timer")

Timer.prototype.timer_list = {}
Timer.prototype.timer_num= 0

--- 类的方法

function Timer:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.timer_list = {}
    instance.timer_num= 0
end


function Timer.prototype:tempTimer(time,code,repeating)
    repeating = repeating or false
    local tRt = tempTimer(time, code, repeating)
    self.timer_num = self.timer_num + 1
    table.insert(self.timer_list,tRt)
end

function Timer.prototype:enable()
    for i, v in pairs(self.timer_list) do
        enableTimer(v)
    end
end

function Timer.prototype:disable()
    for i, v in pairs(self.timer_list) do
        disableTimer(v)
    end
end

function Timer.prototype:kill()
    for i, v in pairs(self.timer_list) do
        killTimer(v)
    end
end
