# Nested Loops

(1..3).each do |num|
  puts num
end

# prints 1, 2, 3

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
