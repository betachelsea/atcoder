# https://atcoder.jp/contests/abc042/tasks/abc042_a
nums = gets.chomp.split.map(&:to_i)
puts (nums.count(5) == 2 && nums.count(7) == 1) ? 'YES' : 'NO'

