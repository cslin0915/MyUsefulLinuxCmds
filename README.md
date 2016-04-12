Linux Commands
==

* 在當下目錄找出含有 "vim" 字串的檔案並刪除它們<br>
`find . -maxdepth 1 -mindepth 1 -type f | grep vim -exec rm {} \;`

* 將 ~/Google Drive/habits 資料夾下的子資料夾個別建立 link 至 ~/habit 資料夾下<br>
``find -P `pwd` /Google\ Drive/habits -mindepth 1 -maxdepth 1 -type d -exec ln -fns {} habit \;``

* 找出所有含 "debug" 字詞的 cpp 檔案<br> 
`find . -name \*.cpp -exec grep -q "debug" '{}' \; -print`
