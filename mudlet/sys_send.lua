--[[
Author: Donald duck tang5722917@163.com
Date: 2023-06-15 20:00:11
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-06-19 17:13:00
FilePath: \yh-mudlet\Sys\sys_send.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
--[[
Author: Donald duck tang5722917@163.com
Date: 2023-06-15 20:00:11
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-06-15 20:00:41
FilePath: \yh-mudlet\Sys\sys_send.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
sys_cmd = sys_cmd or {}
sys_cmd.cmd_queue_normal = sys_cmd.cmd_queue_normal or {}

registerAnonymousEventHandler("CMD_clk_event_normal", "sys_cmd.SendHandle_normal")

function sys_cmd.SendHandle_normal(event,is_cmdtime)
  if not (#sys_cmd.cmd_queue_normal == 0) then
    if not (sys_cmd.cmd_queue_normal[1] == nil) then
      send( sys_cmd.cmd_queue_normal[1] )
      table.remove(sys_cmd.cmd_queue_normal,1)
      end
    end
end

function sys_cmd.add_string_normal(cmd_string)
  table.insert(sys_cmd.cmd_queue_normal,cmd_string)
end

function sys_cmd.add_table_normal(sys_cmd_add_table)
  for i,v in pairs(sys_cmd_add_table) do
    table.insert(sys_cmd.cmd_queue_normal,v) end
end

function sys_cmd.insert_string_normal(cmd_string)
  table.insert(sys_cmd.cmd_queue_normal,1,cmd_string)
end

function sys_cmd.insert_table_normal(sys_cmd_add_table)
  for i,v in pairs(sys_cmd_add_table) do
    table.insert(sys_cmd.cmd_queue_normal,i,v) end
end

function sys_cmd.clear_table_normal()
  for i=1,#sys_cmd.cmd_queue_normal
    do table.remove(sys_cmd.cmd_queue_normal) end
  end
