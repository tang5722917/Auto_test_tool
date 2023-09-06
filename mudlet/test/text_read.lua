--[[
Author: Donald duck tang5722917@163.com
Date: 2023-09-06 18:23:30
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2023-09-06 18:23:33
FilePath: \Auto_test_tool\mudlet\test\text_read.lua
Description:  测试文本导入
Copyright (c) 2023 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]

function Read_mud_text(file_name)
    local file = io.open(file_name, 'r')
    io.input(file)
    local line = io.read()
    while (line) do
        local line_t = string.trim(line)
        local first_w = utf8.find(line_t,'*')
        if (first_w ~= 1) then    -- 去除以“*” 开头的为注释行
            Log.echo(line_t,5)
        end
        line = io.read()
    end
    io.close(file)
end
