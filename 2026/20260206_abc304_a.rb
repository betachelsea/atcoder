N = gets.to_i
humans = N.times.map do
  info = gets.chomp.split
  [info[1].to_i, info[0]]
end.to_h

start_index = humans.keys.index(humans.keys.min)
names = humans.values

N.times do |n|
  if (n + start_index) < names.length 
    puts names[n + start_index]
  else
    puts names[(n + start_index) - names.length]
  end
end
