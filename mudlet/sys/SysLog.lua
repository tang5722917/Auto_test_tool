--[[
Author: Donald duck tang5722917@163.com
Date: 2023-08-30 19:18:24
LastEditors: Donald duck tang5722917@163.com
LastEditTime: 2024-01-09 16:06:59
FilePath: \Auto_test_tool\mudlet\sys\SysLog.lua
Description: Log 功能
Copyright (c) 2024 by Donald duck email: tang5722917@163.com, All Rights Reserved.
--]]
Log = Log or {}

Log.filename = Lua_path .. Debug_log_file
Log.file = io.open(Log.filename, "w+")
io.output(Log.file)
io.write("*****************************************************\n")
io.write("                 Auto Test Log           \n")
io.write("  Time : "..getTime(true).."\n")
io.write("*****************************************************\n")
io.close(Log.file)

function Log.echo(str, rank)
    if (rank == 0) then
        if (Debug_log_rank >= rank) then
            cecho("<red>" .. str .. '\n')
        end
    end
    if (rank == 1) then
        if (Debug_log_rank >= rank) then
            cecho("<yellow>" .. str .. '\n')
        end
    end
    if (rank == 2) then
        if (Debug_log_rank >= rank) then
            cecho("<cyan>" .. str .. '\n')
        end
    end
    if (rank == 3) then
        if (Debug_log_rank >= rank) then
            cecho("<green>" .. str .. '\n')
        end
    end
    if (rank == 4) then
        if (Debug_log_rank >= rank) then
            cecho("<purple>" .. str .. '\n')
        end
    end
    if (rank == 5) then
        if (Debug_log_rank >= rank) then
            echo(str .. '\n')
        end
    end
end

function Log.output(str)
    local fl = io.open(Log.filename, "a")
    io.output(fl)
    io.write(getTime(true) ..": "..str .. "\n")
    io.close(fl)
end
