#!/bin/bash

# gcd.shを指定された引数と期待される出力でテストする関数
test_gcd() {
	  local expected=$3
	  local result=$(./gcd.sh $1 $2 2>&1)
	      
	  if [[ "$result" == *"$expected"* ]]; then
             echo "入力 $1 $2 のテストに合格しました。"
          else
	     echo "入力 $1 $2 のテストに失敗しました。"
	     echo "期待される出力: $expected"
	     echo "実際の出力: $result"
	     exit 1
	  fi
 }

 # テストケース
 test_gcd 48 18 "48 と 18 の最大公約数は 6 "
 test_gcd 101 103 "101 と 103 の最大公約数は 1　"
 test_gcd 56 98 "56 と 98 の最大公約数は 14 "
 test_gcd 0 5 "エラー: 両方の引数は正の整数が必用"
 test_gcd 5 0 "エラー: 両方の引数は正の整数が必用"
 test_gcd -5 10 "エラー: 両方の引数は正の整数が必用"
 test_gcd 20 -10 "エラー: 両方の引数は正の整数が必用"
 test_gcd 20 "エラー: 2つの引数が必要"
 test_gcd 20 10 30 "エラー: 2つの引数が必要"
 
 echo "すべてのテストに合格"

