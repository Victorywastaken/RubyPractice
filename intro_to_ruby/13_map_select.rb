# Array-Giving Enumerables
#  map
#  select

# MAP
arr = ["a", "b", "c", "d"]

new_arr = []
arr.each { |ele| new_arr << ele.upcase}
print new_arr

# --OR--

#map returns something new
new_arr = arr.map { |ele| ele.upcase }

# SELECT
nums = [1,2,3,4,5,6]

evens = []
nums.each do |num|
  if num % 2 == 0
    evens << num
  end
end
print evens # => [2, 4, 6]

#select returns something new
new_arr = nums.select { |num| num % 2 == 0 }

#Array-giving Enumerables

arr = ["apple", "banana", "carrot"]

new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase }

#for non one liner maps

new_arr = arr.map do |word|
  first_char = word[0].upcase
  rest = word[1..-1].downcase
  first_char + rest
end

new_arr = arr.map.with_index do |word, i|
  first_char = word[0].upcase
  rest = word[1..-1].downcase
  new_word = first_char + rest
  new_word * i # when multiplying string by integer, it will repeat the string that many times
end

