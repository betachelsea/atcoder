N = gets.chomp.to_i

cells = Array.new(N, nil)
N.times do |i|
  cells[i] = gets.chomp
end

after_cells = Array.new(N) { Array.new(N){ "x"*3 } }

N.times do |i|
  N.times do |j|
    if i == 0
      if j == 0
        after_cells[0][0] = cells[1][0]
      else
        after_cells[0][j] = cells[0][j-1]
      end
    elsif j == 0
      if i == (N-1)
        after_cells[N-1][0] = cells[N-1][1]
      else
        after_cells[i][0] = cells[i+1][0]
      end
    elsif j == (N-1)
      after_cells[i][N-1] = cells[i-1][N-1]
    elsif i == (N-1)
      after_cells[N-1][j] = cells[N-1][j+1]
    else
      after_cells[i][j] = cells[i][j]
    end
  end
end

after_cells.each do |line|
  puts line.join
end
