#!/bin/bash
#Windows特有の c:/hoge/fuga というパス表記を /mnt/c/hoge/fuga に書き換えてコマンドを実行する

newArgs=()
for arg in $@; do
	if [ ${arg:1:1} = : ]; then
		arg=/mnt/${arg:0:1}${arg#*:}
	fi
	newArgs+=( $arg )
done
${newArgs[@]}
