# 参考
Thanks to 競プロ同好会 IN Rails Girls More!
https://scrapbox.io/rails-girls-kyopro-club/

# サンプル
https://atcoder.jp/contests/practice/tasks/practice_1

```ruby
# hoge.rb
a = gets.chomp.to_i # ※gets.to_iではNG
b, c = gets.chomp.split.map(&:to_i)
s = gets.chomp
puts "#{a + b + c} #{s}" # 最後改行が必要(puts)
```

$ ruby hoge.rb
(入力入れる)

```ruby
puts gets.upcase
```

# debug

```ruby
require 'debug'
binding.break
```

# 便利

```ruby
# 全探索する
(1..3).to_a.permutation.to_a
=> [[1,2,3],[1,3,2], [2,1,3],[2,3,1],[3,1,2],[3,2,1]]

# 共通の値を得る
["a", "b", "z"].intersection(["a", "b", "c"], ["b"])  # => ["b"]
```

# スニペット(参考ページより)

## 整数として値を1つ受け取る
 n = gets.chomp.to_i
 s = gets.chomp # 文字列として値を1つ受け取る
 s = gets.chomp.chars # 文字列として値を受け取り、1文字ずつに分解する
 
## 整数で個数が分かっていて、それぞれを個別の変数として受け取る
 n, m = gets.chomp.split.map(&:to_i)
 
## 整数であることが分かっていて、配列としてまとめて受け取る
 array = gets.chomp.split.map(&:to_i)
 
## 実際何行になるかは必ず事前に変数で受け取ることができる
 n = gets.chomp.to_i
 array = []
 n.times do
   array << gets.chomp.split.map(&:to_i)
 end

## 二次元配列
datas = Array.new(n+1) { Array.new(n+1) }

## 多次元Hash
datas = Hash.new{|h,k| h[k] = {} }

## 累積和データを作る
total_precips = 0
cumu_precips = gets.chomp.split.map { |value| total_precips += value.to_i }
cumu_precips.unshift 0

## テストする
accを使うと良い

# アルゴリズムについて

## 深さ優先探索(DFS)
https://qiita.com/drken/items/4a7869c5e304883f539b

## メモ化再帰
途中までの計算結果をキャッシュして利用するる

## キューの中で出たり入ったりするとき
PriorityQueue


## 参考
[Ruby競プロTips(基本・罠・高速化108 2.7x2.7)](https://zenn.dev/universato/articles/20201210-z-ruby)


 
# Q&A

## Q: 998244353 の数字に意味合いはあるのか？
→ 超でかい素数として使われる

# メモ
- 貰うDPと配るDP
- each より upto
- Infinityより整数
- Array.new( N, 0 )

 
 
