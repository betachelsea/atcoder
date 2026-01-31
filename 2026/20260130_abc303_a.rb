N = gets.to_i
s = gets.chomp
t = gets.chomp

N.times do |n|
  next if s[n] == t[n]
  next if s[n] == '1' && t[n] == 'l'
  next if s[n] == 'l' && t[n] == '1'
  next if s[n] == '0' && t[n] == 'o'
  next if s[n] == 'o' && t[n] == '0'
  puts "No"
  exit
end

puts "Yes"
