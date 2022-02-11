# << adds an element to the end of an array, evalutes to the array

# array.push adds an element to the end of an array, evaluates to the array
# array.pop removes the last element of an array, evaluates to the removed element

# array.unshift adds an element to the beginning of an array, evaluates to the array
# array.shift removes the first element of an array, evaluates to the removed element

arr = [1, 2, 3, 4, 5]
print arr # [1, 2, 3, 4, 5]
puts
arr.push("jia", "kurtsie")
print arr # [1, 2, 3, 4, 5, "jia", "kurtsie"]
puts

arr = [1, 2, 3, 4, 5]
print arr.pop()
puts
print arr # [1, 2, 3, 4]
puts

arr = [2, 3, 4, 5]
print arr.unshift(1);
puts
print arr # [1, 2, 3, 4, 5]
puts

arr = [1, 2, 3, 4, 5]
print arr.shift #1
puts

# array/string.index(ele) - evaluates to the index where ele is found
# array.include?(ele) - evaluates to a boolean indicating if ele is found

arr = ["SF", "NY", "LA"]
print arr.index("SF") # 0
print arr.include?("NY") # true

#array/string.reverse evalutes to a new reverse version of the array or string

#array/string.reverse! reverses an array/string in place

arr = [1, 2, 3, 4]
print arr # [1, 2, 3, 4]
puts
arr.reverse
print arr # [1, 2, 3, 4]
#arr.reverse doesn't actually reverse the array, it returns a NEW array with the reversed elements
puts

print arr.reverse # [4, 3, 2, 1]

# in order to modify the existing array, use the reverse! method

arr = [2, 3, 4, 5]
arr.reverse!
print arr # [5, 4, 3, 2]

# array/string slicing
#   array[start_index..length] - grabs elements from start to end (inclusive)
#   array[start_index..end_index] - grabs elements from start to end (excluding element at end_index)

arr = ['a', 'b', 'c', 'd', 'e']
print arr[1..3] # ['b', 'c', 'd']
print arr[1...3] # ['b', 'c']

#one useful trick we may use using slicing in ruby is to use negative indices
print str[3..-1] # ['d', 'e']
#-1 is the last element in the array, -2 is the second to last element, etc.

#string.split evalutes to an array
#array.join evalutes to a string

str = "follow the yellow brick road"
print str.split(" ") # ["follow", "the", "yellow", "brick", "road"]

arr = ["hello", "world", "how", "are", "you"]
print arr.join(" ") # "hello world how are you"

#Enumerable Methods
#  array
#   .each
#   .each_with_index
#  string
#   .each_char
#   .each_char.with_index

months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month } # prints each month

months.each do |ele|
  #prints each ele
  puts ele
  puts "---"
end

#in the first version, if you ever want to use a single line, use that
#in the second version if you need more lines you can use the do/end block

sentence = "hello world"

#for strings you need to use each_char instead of each
sentence.each_char do |char|
  #prints each char
  puts char
end

#for using each with an index
months.each_with_index do |ele, index|
  #prints each ele and its index
  puts "#{index}: #{ele}"
end

#for using each_char with index
sentence.each_char.with_index do |char, index|
  #prints each char and its index
  puts "#{index}: #{char}"
end

#range enumerable
# (start..end).each iterate from start to end (inclusive)
# (start...end).each iterate from start to end (excluding end)

(1..5).each { |num| puts num } # prints 1, 2, 3, 4, 5
(1...5).each { |num| puts num } # prints 1, 2, 3, 4

#write a method fizzBuzz that takes in a number max and returns an array of
#all numbers less than max that are divisible by 3 or 5, but not both

def fizzBuzz(max)
  arr = []
  (1...max).each do |num|
    if num % 3 == 0 && num % 5 == 0
      #do nothing
    elsif num % 3 == 0
      arr.push(num)
    elsif num % 5 == 0
      arr.push(num)
    end
  return arr
end

(0...4).each { |num| puts num } # prints 0, 1, 2, 3

(0...4).each { |num| puts "hello" } # prints hello, hello, hello, hello
#another way of doing the above
4.times { puts "hi" } # prints hi, hi, hi, hi
