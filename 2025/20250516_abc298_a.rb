N = gets.chomp
S = gets.chomp.chars
puts (S.count("o") >= 1 && S.count("x") == 0) ? 'Yes' : 'No'

