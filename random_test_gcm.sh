#!/bin/bash

# gcm.shを指定された引数でテストする関数
test_gcm() {
	  local arg1=$1
	  local arg2=$2
	  local result=$(./gcm.sh $arg1 $arg2 2>&1)

	  echo "テスト: ./gcm.sh $arg1 $arg2"
	  echo "$result"
          echo
	 }

 # ランダムな正の整数を生成
random_int() {
  echo $((RANDOM % 100 + 1))
 }

# ランダムな無効な入力を生成
random_invalid_input() {
  local invalid_chars=("a" "b" "%" "&" "!" "@" "1a" "a1" "-10" " " "")
  echo "${invalid_chars[$RANDOM % ${#invalid_chars[@]}]}"
 }

 # 有効な入力でテストを実行
 echo "有効な入力テスト"
 for i in {1..5}; do
  test_gcm $(random_int) $(random_int)
 done

 # 無効な入力でテストを実行
 echo "無効な入力テスト"
 for i in {1..5}; do
   test_gcm $(random_invalid_input) $(random_invalid_input)
 done

 echo "テスト完了"

