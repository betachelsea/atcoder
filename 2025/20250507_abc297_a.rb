N, D = gets.chomp.split.map(&:to_i)
times = gets.chomp.split.map(&:to_i)

(1...N).each do |n|
  if (times[n] - times[n - 1]) <= D
    puts times[n]
    exit
  end
end

puts '-1'
