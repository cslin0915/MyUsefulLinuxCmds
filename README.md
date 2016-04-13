Linux Commands
==

* 在當下目錄找出含有 "vim" 字串的檔案並刪除它們  
```
find . -maxdepth 1 -mindepth 1 -type f | grep vim -exec rm {} \;
```

* 將 ~/Google Drive/habits 資料夾下的子資料夾個別建立 link 至 ~/habit 資料夾下  
```
find -P `pwd` /Google\ Drive/habits -mindepth 1 -maxdepth 1 -type d -exec ln -fns {} habit \;
```

* 找出所有含 "debug" 字詞的 cpp 檔案   
```
find . -name \*.cpp -exec grep -q "debug" '{}' \; -print
```

* 查看 Ubuntu 的發行版代號 （Codename)
```
lsb_release -a
```

Git Commands
==
* Git Aliases
```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```