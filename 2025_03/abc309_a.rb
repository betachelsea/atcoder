# https://atcoder.jp/contests/abc309/tasks/abc309_a
A,B = gets.chomp.split.map(&:to_i)

ans = 'No' if A == 3
ans = 'No' if A == 6
ans ||= ((A+1 == B) ? 'Yes' : 'No')

puts ans
