--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 17:37:05
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 19:28:15
FilePath: \Auto_test_tool\mudlet\Object\Complex_Trigger.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]


-- 复杂触发类
-- 不包括expireAfter 参数
Trigger_Base:subclass("ComplexTrigger")
ComplexTrigger.prototype.TriggerNameNum = 0

--- 类的方法

function ComplexTrigger.prototype:tempMultiRegexTrigger(name, regex, code, multiline, fire_length,line_detla)
    self.TriggerNameNum = self.TriggerNameNum + 1
    local TriggerName = "CT"..self.TriggerNameNum
    local temp = {name, regex, code, multiline,fire_length,line_detla,TriggerName}
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,temp)
end

function ComplexTrigger.prototype:enable()
    for i, v in ipairs(self.tri_list) do
        if tempComplexRegexTrigger(v[1], v[2], v[3], v[4], 0, 0, 0, 0, 0, 0, 0, v[5],v[6]) == false then
            Log.echo("Create Trigger False",1)
        end
    end
end

function ComplexTrigger.prototype:disable()
    for i, v in ipairs(self.tri_list) do
        if ((killTrigger(v[1])) ~=false) then
            self.tri_num = self.tri_num - 1 end
        end
end

function ComplexTrigger.prototype:kill()

    for i, v in ipairs(self.tri_list) do
            if ((killTrigger(v[1])) ~= false) then
            self.tri_num = self.tri_num - 1 end
    end
end
