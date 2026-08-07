nums = gets.chomp.split.map(&:to_i)
nums.unshift 99
nums.push(676)

result = 'Yes'

(1..8).each do |i|
  result = 'No' and break unless nums[i - 1] <= nums[i]
  result = 'No' and break unless 100 <= nums[i]
  result = 'No' and break unless nums[i] <= 675
  result = 'No' and break unless nums[i] % 25 == 0
end

puts result
