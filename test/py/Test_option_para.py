'''
Author: Donald Duck tang5722917@163.com
Date: 2022-09-16 02:18:54
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2023-05-16 01:55:54
FilePath: /Auto_test_tool/test/Test_option_para.py
Description:SNFE auto test option parameter
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
'''
class Test_option_para:
    # 0 : tt++文件
    # 1 : JSON文件
    MUD_output_action = 0
    def set_MUD_output_action(self,num):
        Test_option_para.MUD_output_action = num
    def get_MUD_output_action(self):
        return Test_option_para.MUD_output_action

    # 0 : default, only run one netlist test
    # 1 : run all netlist test
    Run_all_test = 0
    def set_Run_all_test(self,num):
        Test_option_para.Run_all_test = num
    def get_Run_all_test(self):
        return Test_option_para.Run_all_test
