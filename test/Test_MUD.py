'''
Author: Donald Duck tang5722917@163.com
Date: 2022-09-13 02:04:19
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-16 03:06:18
FilePath: /spice_netlist_front_end/test/Test_script.py
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
        if self.script_config.get_SNFE_output_action() == 0:
            os.system("python SNFE.py "+self.path_cir+self.script_name+'/'+self.script_name+'.cir --logpath='+self.path_cir+self.script_name+'/'+self.script_name+'_log.txt')
        logging.info('Test script: '+self.script_name+' | Test setting :'+ str(self.script_config.get_SNFE_output_action()) )
        logging.info('Test Info: '+self.script_info)
    def print_info(self):
        return self.script_info
