# https://atcoder.jp/contests/abc384/tasks/abc384_b
N, R = gets.chomp.split.map(&:to_i)
now_rating = R
N.times do
  div, a = gets.chomp.split.map(&:to_i)
  if  ( div == 1 && 1600 <= now_rating && now_rating <= 2799 ) ||
      ( div == 2 && 1200 <= now_rating && now_rating <= 2399)
    now_rating = now_rating + a
  end
end

puts now_rating
