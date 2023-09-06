--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-31 17:37:05
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 19:30:23
FilePath: \Auto_test_tool\mudlet\Object\SysFun_table.lua
Description: 
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]


Sys_table = Sys_table or {}
function Sys_table.merge (table1,table2)   -- 两个table合并，返回合并后的table
local table={}
for key,value in ipairs(table1)
do
   table[key]=value
end

for key,value in ipairs(table2)
do
   table[key+#table1]=value
end
return table
end
