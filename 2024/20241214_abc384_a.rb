# https://atcoder.jp/contests/abc384/tasks/abc384_a
N,c1,c2 = gets.chomp.split
S = gets.chomp
puts S.chars.map {|c| c == c1 ? c1 : c2 }.join
