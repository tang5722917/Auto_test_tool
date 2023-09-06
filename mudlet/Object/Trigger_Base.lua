--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 17:37:05
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 19:29:33
FilePath: \Auto_test_tool\mudlet\Object\Trigger_Base.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]


-- 元类
Object:subclass("Trigger_Base")

Trigger_Base.prototype.tri_list = {}
Trigger_Base.prototype.tri_num = 0

--- 类的方法

function Trigger_Base:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.tri_list = {}
    instance.tri_num = 0
  end

function Trigger_Base.prototype:enableTrigger()
    for i, v in ipairs(self.tri_list) do
        enableTrigger(v)
    end
end

function Trigger_Base.prototype:disableTrigger()
    for i, v in ipairs(self.tri_list) do
        disableTrigger(v)
    end
end

function Trigger_Base.prototype:killTrigger()
    for i, v in ipairs(self.tri_list) do
        killTrigger(v)
        self.tri_num = self.tri_num -1
    end
end

-- 基本触发类
-- 不包括expireAfter 参数
Trigger_Base:subclass("Trigger")

function Trigger.prototype:tempRegexTrigger(regex,code)
    local tRt = tempRegexTrigger(regex, code)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end

function Trigger.prototype:tempTrigger(substring,code)
    local tRt = tempTrigger(substring, code)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end
