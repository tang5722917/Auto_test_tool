--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 17:37:05
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 19:28:30
FilePath: \Auto_test_tool\mudlet\Object\Task_Base.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]



-- 元类
Object:subclass("Task")

Task.prototype.tri_obj_list = {}
Task.prototype.tri_obj_num = 0
Task.prototype.timer_obj_list = {}
Task.prototype.timer_obj_num = 0
Task.prototype.data = {}

--- 类的方法

function Task:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.tri_obj_list = {}
    instance.tri_obj_num = 0
    instance.timer_obj_list = {}
    instance.timer_obj_num = 0
    instance.data = {}
  end

function Task.prototype:add_tri_obj(tri_obj)
    self.tri_obj_num = self.tri_obj_num + 1
    table.insert(self.tri_obj_list,tri_obj)
end

function Task.prototype:add_timer_obj(tri_obj)
    self.timer_obj_num = self.timer_obj_num + 1
    table.insert(self.timer_obj_list,tri_obj)
end

function Task.prototype:enable_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:enable()
    end
end

function Task.prototype:disable_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:disable()
    end
end

function Task.prototype:kill_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:kill()
    end
end

function Task.prototype:enable_timer_obj()
    for i, v in pairs(self.timer_obj_list) do
        v:enable()
    end
end

function Task.prototype:disable_timer_obj()
    for i, v in pairs(self.timer_obj_list) do
        v:disable()
    end
end

function Task.prototype:kill_timer_obj()
    for i, v in pairs(self.timer_obj_list) do
        v:kill()
    end
end


function Task.prototype:start()
    self:enable_tri_obj()
    self:enable_timer_obj()
    Log.echo("Gen Task ".. self.name .." trigger/timer start \n", 5)
end

function Task.prototype:stop()
    self:disable_tri_obj()
    self:disable_timer_obj()
    Log.echo("Task ".. self.name .." trigger/timer stop \n", 5)
end

function Task.prototype:kill()
    self:kill_tri_obj()
    self:kill_timer_obj()
    Log.echo("Task ".. self.name .." trigger/timer kill \n", 5)
end
