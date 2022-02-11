#Conditionals

num = -5

if num > 0
  puts "Positive"
  # is eslif in ruby (javascript version is else if)
elsif num < 0
  puts "Negative"
else
  puts "Zero"
end

#both will print because both conditions are true
num = 8

if num > 0
  puts "positive"
end

if num % 2 == 0
  puts "even"
end

#else or els makes the conditions exclusive

if num > 0
  put "positive"
else
  puts "negative"
end
