# https://atcoder.jp/contests/abc384/tasks/abc384_c
a,b,c,d,e = gets.chomp.split.map(&:to_i)

points = {
  "A" => a,
  "B" => b,
  "C" => c,
  "D" => d,
  "E" => e,
}

questions = "ABCDE".chars

list = {}

(1..5).each do |n|
  participants = questions.combination(n).to_a.map(&:join)
  participants.each do |q_str|
    list[q_str] = q_str.chars.sum{|c| points[c] }
  end
end

sorted_list = list.sort do |a, b|
  if b[1] == a[1]
    a[0] <=> b[0]
  else
    b[1] <=> a[1] # 得点降順
  end
end

sorted_list.each {|k,v| puts k }
