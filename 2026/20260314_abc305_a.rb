N = gets.to_i

remainder = N % 5

if remainder <= 2
  puts 5 * (N / 5)
else
  puts 5 * (N / 5 + 1)
end
