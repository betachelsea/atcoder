# https://atcoder.jp/contests/abc309/tasks/abc309_b
N = gets.chomp.to_i
map_a = N.times.map { gets.chomp }

map_b = []
map_b << map_a[1][0] + map_a[0][0...(N-1)]
(1...(N-1)).each do |n|
  map_b << map_a[n+1][0] + map_a[n][1...(N-1)] + map_a[n-1][N-1]
end
map_b << map_a[-1][1..] + map_a[-2][-1]

map_b.each {|l| puts l }
