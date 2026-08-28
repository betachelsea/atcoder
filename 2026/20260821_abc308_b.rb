N, M = gets.chomp.split.map(&:to_i)
colors = gets.chomp.split
dishes = gets.chomp.split
prices = gets.chomp.split.map(&:to_i)

menus = {}
dishes.each.with_index(1) do |d, i|
  menus[d] = prices[i]
end

puts colors.sum {|c| menus[c] || prices[0] }
