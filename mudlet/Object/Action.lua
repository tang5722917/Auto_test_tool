--[[
Author: Donald duck tang5722917@163.com
Date: 2024-01-08 16:30:27
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2024-01-08 16:30:28
FilePath: \Auto_test_tool\mudlet\Object\Action.lua
Description:  测试动作类，用于构建一个测试动作
Copyright (c) 2024 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

function Auction_next_ins(event, ins)
    ins.next_ins();
end

Object:subclass("Action")

--[[   Type测试种类
Timer       延时
STriger     string触发
--]]

--动作种类
Action.prototype.type = ""
Action.prototype.supper_object = nil
Action.prototype.object = nil

function Action:new(instance,super)
    self.super:new(instance) --执行父类的构造内容
    self.prototype.supper_object = super
end

function Action.prototype:add_timer(time)
    self.type = "Timer"
    self.object = Timer("Test Delay Object")
    self.object:tempTimer(time, function() raiseEvent("next_test_ins", self) end, 1)
end

function Action.prototype:next_ins()
    self.prototype.object.killTimer()
    self.prototype.supper_object.next_ins()
end
