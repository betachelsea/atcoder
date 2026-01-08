_N = gets
NUMBERS = gets.chomp.split.map(&:to_i)
puts NUMBERS.filter{|n| n % 2 == 0 }.join(" ")