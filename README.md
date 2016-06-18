### Table of Contents
| OSs | VCSs |
| :---: | :---: |
| **[Linux Commands](#linux-commands)** | **[Git Commands](#git-commands)** |  

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
| | | |
| :---: | :---: | :---: |
| **[Alias](alias-related)** | **[Remote](remote-related)** | **[List](list-related)** |


Alias Related
--
```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

Remote Related
--
```
git remote -v
git remote set-url origin https://github.com/USERNAME/OTHERREPOSITORY.git
git remote add pb https://github.com/USERNAME/OTHERREPOSITORY.git
git remote show pb
git remote rename pb paul
git remote rm paul
```

List Related
--
```
git ls-tree -r master --name-only
```
