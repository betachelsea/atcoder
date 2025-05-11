S = gets.chomp
b1 = S.index("B", 0)
b2 = S.index("B", b1+1)

if b1.even? == b2.even?
  puts 'No'
  exit
end

r1 = S.index("R", 0)
r2 = S.index("R", r1+1)
k = S.index("K")

puts (r1 < k && k < r2) ? 'Yes' : 'No'
