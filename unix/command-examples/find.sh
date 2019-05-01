#!/usr/bin/env bash
#########
### A series of examples of the find command
#########

# 在當下目錄找出檔案內容含有 "vim" 字串的檔案, 並刪除它們
find . -maxdepth 1 -mindepth 1 -type f | grep vim -exec rm {} \;

# 取出 ~/Google Drive/habits 資料夾下的子資料夾, 為其各別建立捷徑至 ~/habit 資料夾下
find -P "`pwd`" /Google\ Drive/habits -mindepth 1 -maxdepth 1 -type d -exec ln -fns {} habit \;
