X = 'abcdefgh'
Y = '87654321'
x = nil
y = nil
8.times do |n|
  if x = gets.chomp.index('*')
    y = n
    break
  end
end
puts "#{X[x]}#{Y[y]}"

