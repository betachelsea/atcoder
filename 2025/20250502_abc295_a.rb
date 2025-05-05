N = gets.chomp.to_i
words = gets.chomp.split

words.each do |w|
  if %w(and not that the you).include?(w)
    puts 'Yes'
    exit
  end
end

puts 'No'
