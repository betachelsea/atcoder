R,C = gets.chomp.split.map(&:to_i)
board = Array.new
R.times do |r|
  board << gets.chomp
end

def bomb(board, r1, c1, power)
  board.each.with_index do |line, r2|
    line.chars.each.with_index do |cell, c2|
       if (r1 - r2).abs + (c1 - c2).abs <= power
         next if board[r2][c2] != '#'
         board[r2][c2] = '.'
       end
    end
  end
  board
end

board.each.with_index do |line, r1|
  line.chars.each.with_index do |cell, c1|
    if 0 < cell.to_i # bomb
      board = bomb(board, r1, c1, cell.to_i)
    end
  end
end

board.each do |line|
  puts line.gsub(/\d/,".")
end
