N,P,Q = gets.chomp.split.map(&:to_i)
prices = gets.chomp.split.map(&:to_i)
puts [(prices.min + Q), P].min

