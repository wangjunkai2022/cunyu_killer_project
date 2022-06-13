#!/usr/bin/python
import platform
import shutil
import os
import sys
path = sys.path[0]
# print(path)
name = "";
for root,dirs,files in os.walk(path):
	if(root == path):
		for file in files:
			if(file.find(".apk") >= 0):
				name = file[0:-4]
				break
		break
bid_path = path + "/" + name
smalis_path = path + "/android_studio/app/src/main/smalis/"
if(os.path.exists(smalis_path)):
	shutil.rmtree(smalis_path)
os.makedirs(smalis_path)

print(platform.system().lower())
for root,dirs,files in os.walk(bid_path):
	if(root == bid_path):
		for dir_ in dirs:
			# print("dir_",dir_)
			if(dir_.find("smali") >= 0):
				
				app_smailpath = smalis_path + dir_
				if(os.path.exists(app_smailpath)):
					shutil.rmtree(app_smailpath)
				old_path =  root + "/"+ dir_
				runpaths = ""#app_smailpath + " " + old_path
				# runpaths = app_smailpath + " " + old_path
				runsystem = ""
				if platform.system().lower() == 'windows':
					print("windows")
					runpaths = app_smailpath + " " + old_path
					runpaths = runpaths.replace("/","\\")
					runsystem = "mklink /j " + runpaths
				elif platform.system().lower() == 'linux':
					print("linux")
				elif platform.system().lower() == 'darwin':
					print("macos")
					old_path = old_path.replace(" ","\ ")
					app_smailpath = app_smailpath.replace(" ","\ ")
					runpaths = old_path + " " + app_smailpath
					runsystem = "ln -s " + runpaths
				print(runsystem)
				# print(runsystem)
				os.system(runsystem)
		break
