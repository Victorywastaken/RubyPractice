# Nested Loops

# prints 1, 2, 3
(1..3).each do |num|
  puts num
end


# nested num loop
(1..3).each do |num1|
  puts num1
  (1..5).each do |num2|
    puts "  " + num2.to_s
  end
end

# prints the following:
# 1
#   1
#   2
#   3
#   4
#   5
# 2
#   1
#   2
#   3
#...etc

arr = ["a", "b", "c", "d"]

# prints each element
arr.each do |element|
  puts element
end

# below we iterate through ALL possible with duplicates
arr.each do |element1|
  arr.each do |element2|
    puts element1 + element2
  end
end

# prints:
# aa, ab, ac, ad, ba, bb, bc, bd, ca, cb, cc, cd, da, db, dc, dd


# below we iterate through only unique pairs
arr.each_with_index do |element2, i|
  arr.each_with_index do |element1, j|
    if j > i
      puts element1 + element2
    end
  end
end

# if j is greater than i, then j is never referring to what i referred to previously


# 2-D array

arr = [
  ["a", "b", "c"],
  ["d", "e"],
  ["f", "g", "h"]
]

print arr
# [['a', 'b', 'c'], ['d', 'e'], ['f', 'g', 'h']]

arr.each do |subArr|
  subArr.each do |ele|

  end
end
