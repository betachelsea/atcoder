_N, A, B = gets.chomp.split.map(&:to_i)
CHOICES = gets.chomp.split.map(&:to_i)
puts CHOICES.index(A+B) + 1
