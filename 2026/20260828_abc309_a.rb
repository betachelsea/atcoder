A, B = gets.chomp.split.map(&:to_i)

if (B - A != 1) || (A % 3 == 0)
  puts 'No'
else
  puts 'Yes'
end
