height = 5
width = height * 2 - 1

for row in 0..height
  for column in 0..width + 1
    if column >= height - row && column <= height + row
      print "*"
    elsif print " "
    end
  end

  puts
end

for row in (height - 1).downto(0)
  for column in (width + 1).downto(0)
    if column >= height - row && column <= height + row
      print "*"
    elsif print " "
    end
  end

  puts
end
