'''
Author: Donald Duck tang5722917@163.com
Date: 2022-09-13 02:04:19
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2023-05-16 02:49:39
FilePath: /Auto_test_tool/test/Test_MUD.py
Description:script test class
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
'''
import logging
import os
class Test_script :
    def __init__(self,script_name,script_info,script_test_config,path_cir):
        self.script_name=script_name
        self.script_config=script_test_config
        self.script_info=script_info
        self.path_cir = path_cir

    def run_test(self):
        if self.script_config.get_MUD_output_action() == 0:
            file_name = self.path_cir + self.script_name + '/' +self.script_name+'.tt'
            login_tt = open('./setup.tt',"r")
            run_tt_file = open(file_name+'.temp','w')
            run_tt_file.truncate()         #如果已存在该文件，则清空文件内容
            for data_line in login_tt.readlines():
                print(data_line.strip(),file=run_tt_file)
            print("#read {"+file_name+'}',file=run_tt_file)
            run_tt_file.close()
            login_tt.close()
            os.system("./ttt++.sh "+ file_name+'.temp')
        logging.info('Test script: '+self.script_name+' | Test setting :'+ str(self.script_config.get_MUD_output_action()) )
        logging.info('Test Info: '+self.script_info)
    def print_info(self):
        return self.script_info
