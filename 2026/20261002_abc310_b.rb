N,M = gets.chomp.split.map(&:to_i)
items = N.times.map { gets.chomp.split.map(&:to_i) }

# a が b の上位互換かを考える
items.each do |item_a|
  items.each do |item_b|
    next if item_a == item_b
    next if item_a[0] > item_b[0] # aが高ければNG
    next if item_a[1] < item_b[1] # aの機能が不足でNG
    next if (item_b[2..] - item_a[2..]).count > 0 # aの機能が不足でNG

    judge1 = item_a[0] < item_b[0] # aはbより安い
    judge2 = (item_a[2..] - item_b[2..]).count >= 1 # aに新機能が1以上ある

    if judge1 || judge2
      puts 'Yes'
      exit
    end

  end
end

puts 'No'
