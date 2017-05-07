#!/bin/bash
cd ~/phaser

# input project name
proname=$1
while [ ${#proname} = 0 ]
do
  read -p "作成するプロジェクト名を半角英数で入力してください:" proname
done

# copy base folder
echo プロジェクトの作成を開始します。しばらくお待ちください。
cp -r phaser-boilerplate $proname

# change new project folder
cd $proname

echo '{
  "ecmaVersion": 6,
  "libs": [
    "browser",
    "jquery"
  ],
  "loadEagerly": [],
  "dontLoad": [
    "node_module/**"
  ],
  "plugins": {
    "phaser": {},
    "doc_comment": true
  }
}
' > .tern-project

echo プロジェクトフォルダーを作成しました。

