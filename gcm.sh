#!/bin/bash

# 引数が2つかどうかを確認
if [ "$#" -ne 2 ]; then
	  echo "エラー: 2つの引数が必要"
	  exit 1
fi

# 両方の引数が正の整数かどうかを確認
if ! [[ "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+$ ]]; then
	  echo "エラー: 両方の引数は正の整数が必用"
          exit 1
fi

# 引数を変数に割り当て
a=$1
b=$2

# ユークリッドの互除法を使用してGCDを計算する関数
gcd() {
	  local x=$1
	  local y=$2
	  while [ "$y" -ne 0 ]; do
	    	  local temp=$y
		        y=$((x % y))
        	          x=$temp
		  done
		  echo $x
 }

 # GCDを計算して表示
 result=$(gcd $a $b)
echo "$a と $b の最大公約数は $result "

