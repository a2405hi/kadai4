#!/bin/bash

# 最大公約数シェルスクリプトのパス
gcd_script="./gcd.sh"

# 正しい入力のテストケース
echo "2と4を入力する..."
output=$($gcd_script 2 4)
if [ $? -eq 0 ]; then
	    echo "成功: $output"
    else
	        echo "失敗: エラー"
fi

# エラーメッセージが出るべき場合のテスト
echo "3を入力する..."
output=$($gcd_script 3)
if [ $? -ne 0 ]; then
	    echo "成功: エラー、3は最大公約数ではない"
    else
	        echo "失敗: エラー、エラーメッセージが出力されない"
fi

echo "'abc'を入力する..."
output=$($gcd_script abc)
if [ $? -ne 0 ]; then
	    echo "成功: エラー、'abc'は最大公約数ではない"
    else
	        echo "失敗: エラー、エラーメッセージが出力されない"
fi
