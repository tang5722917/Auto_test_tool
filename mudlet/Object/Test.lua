--[[
Author: Donald duck tang5722917@163.com
Date: 2024-01-08 16:22:06
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2024-01-08 16:22:08
FilePath: \Auto_test_tool\mudlet\Object\Test.lua
Description:  测试类，用于构建一次测试
Copyright (c) 2024 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
function Test_end_test(event, test)
    test.end_test();
end


Object:subclass("Test")

--动作对象列表
Test.prototype.test_action = {}
--测试动作对象数
Test.prototype.test_action_num = 0

function Test:new(instance)
    self.super:new(instance) --执行父类的构造内容
    instance.test_action = {}
    instance.test_action_num = 0
end

function Test.prototype:new_action()
    local action_obj = Action("Test Action")
    return action_obj
end

function Test.prototype:add_action(action_obj)
    table.insert(self.test_action,action_obj)
end

function Test.prototype:next_ins()
    local next_obj = nil
    table.remove(self.test_action, 1)
    if not (#self.test_action == 0) then
        next_obj = self.test_action[1]
        if not (next_obj == nil) then
            next_obj.action()
        end
    else
        raiseEvent("test_end_test", self)
    end
end

function Test.prototype:end_test()
    echo("End Test")
end
