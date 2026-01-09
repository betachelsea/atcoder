_N = gets
S = gets.chomp
puts S.split("|")[1]&.include?("*") ? "in" : "out"