column_range = 1..4
row_range = 1..8

for row in row_range
  for column in column_range
    if row == 1 || row == 3 || row == 5 || row == 7
      print " 0  1 "
    else
      print " 1  0 "
    end
  end

  puts ""
end
