N = gets.chomp.to_i
counts = gets.chomp.split.map(&:to_i)

answers = N.times.map do |n|
  counts[n*7...(n*7+7)].sum
end
puts answers.join(" ")
