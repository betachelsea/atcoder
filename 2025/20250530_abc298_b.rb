N = gets.chomp.to_i

a = N.times.map do
  gets.chomp.split.map(&:to_i)
end
b = N.times.map do
  gets.chomp.split.map(&:to_i)
end

4.times do |n|
  a = N.times.map {|i| N.times.map{|j| a[N-j-1][i] } } # rotate
  ng_flag = false
  a.each.with_index do |line, y|
    line.each.with_index do |n, x|
      next if n == 0
      if b[y][x] == 0
        ng_flag = true
        break
      end
    end
    break if ng_flag
  end

  unless ng_flag
    puts "Yes"
    exit
  end
end

puts "No"
