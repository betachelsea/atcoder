N = gets.chomp.to_i
items = N.times.map { gets.chomp }

N.times do |n|
  N.times.each do |m|
    next if n == m
    sentence = items[n] + items[m]
    result = true
    sentence.chars.each.with_index(1) do |c,i|
        if c != sentence[-1 * i]
          result = false
          break
        end
    end
    if result
      puts "Yes"
      exit
    end
  end
end

puts "No"
