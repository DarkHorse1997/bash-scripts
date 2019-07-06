import os

folder_list = os.listdir(os.getcwd())

for folder in folder_list:
    os.chdir(folder)
    file_list = os.listdir(os.getcwd())
    
    print(file_list)
