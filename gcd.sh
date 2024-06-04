#!/bin/bash

# 引数の数が正しいかチェック
if [ "$#" -ne 2 ]; then
	    echo "Error: Usage $0 <num1> <num2>"
	        exit 1
fi

# 引数が自然数かどうかチェック
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]] || ! [[ "$2" =~ ^[1-9][0-9]*$ ]]; then
	    echo "Error: Arguments must be natural numbers."
	        exit 1
fi

# 引数を変数に格納
num1=$1
num2=$2

# num1 と num2 の最大公約数を求める関数
function gcd {
	    local a=$1
	        local b=$2
		    while [ $b -ne 0 ]; do
			            local temp=$b
				            b=$((a % b))
					            a=$temp
						        done
							    echo $a
						    }

						    # 最大公約数を出力
						    result=$(gcd $num1 $num2)
						    echo "GCD of $num1 and $num2 is: $result"

						    # 最大公約数が 2 の場合は成功、それ以外はエラー終了
						    if [ "$result" -eq 2 ]; then
							        exit 0
							else
								    exit 1
						    fi
