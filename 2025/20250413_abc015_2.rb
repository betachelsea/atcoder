# https://atcoder.jp/contests/abc015/tasks/abc015_2
N = gets.chomp.to_i
data = gets.chomp.split.map(&:to_i)
bugs = data.select {|x| x != 0 }
puts (bugs.sum / bugs.count.to_f).ceil
