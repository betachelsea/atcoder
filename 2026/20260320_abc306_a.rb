N = gets.to_i
S = gets.chomp

puts S.chars.map { |s| "#{s}#{s}" }.join
