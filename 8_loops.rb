#Loops

#method that repeats Hello 3 times forcefully
def repeatHello
  puts "Hello"
  puts "Hello"
  puts "Hello"
  puts "Hello"
  puts "Hello"
end

#method that repeats Hello 3 times with a while loop
def repeatHello()
  counter = 1
  while counter <= 5
    puts "Hello"
    counter += 1
  end
end

def printNums
  i = 0
  while i < 4
    puts i
    i += 1
  end
end

#make sure your loops are not infinite
# def printNums
#   i = 1
#   while i <= 4
#     puts i
#     i -= 1
#   end
# end

#loop that takes in two numbers and prints out the numbers from the first to the second
def printNums(num1, num2, step)
  i = num1
  while i <= num2
    puts i
    i += step
  end
end

#looping through a string
def printString(string)
  i = 0
  while i < string.length
    puts string[i]
    i += 1
  end
end

#break - immediately exits the loop
#next - skips to the next iteration of the loop

i = 1
while i <= 10
  puts i
  if i == 5
    break
  end
  puts i
  i += 1
end

while i <= 10
  puts if
  if i == 5
    i += 1
    next
  end
  puts i
  i += 1
end
