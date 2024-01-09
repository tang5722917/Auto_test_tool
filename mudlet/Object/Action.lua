--[[
Author: Donald duck tang5722917@163.com
Date: 2024-01-08 16:30:27
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2024-01-08 16:30:28
FilePath: \Auto_test_tool\mudlet\Object\Action.lua
Description:  测试动作类，用于构建一个测试动作
Copyright (c) 2024 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
Object:subclass("Action")

--[[   Type测试种类
Timer       延时
STriger     string触发
--]]

--动作种类
Action.prototype.typet = nil
Action.prototype.supper_object = nil
Action.prototype.object = nil

function Action:new(instance, su)
    self.super:new(instance) --执行父类的构造内容
end

function Action.prototype:add_supper_test(su)
    self.supper_object=su
end

function Action.prototype:add_timer(timer)
    self.typet = "timer"
    self.object = Timer("Test Delay Object")
    self.object:tempTimer(timer, function() raiseEvent("Action_end_ins", self) end)
end

function Action.prototype:next_ins()
    self.object:kill()
    
    self.supper_object:next_ins()
end

function Action.prototype:start()
    self.object:enable()
end


function action_end_ins(event, ins)
    ins:next_ins();
end
