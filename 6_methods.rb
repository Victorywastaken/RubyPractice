#methods (basically functions)
def sayMessage
  puts 'hello'
  puts 'how are you'
end

# call the method
sayMessage

#methods with parameters
def sayMessage(message)
  puts message
end

#call the method
sayMessage("hello")

#methods that return values
def add(num1, num2)
  sum = num1 + num2
  return sum
end

#Parentheses?
#Ruby is flexible in where we can use parentheses when dealing with our methods. If a method does not expect any parameters, we prefer to call the method without using parentheses. This is a common convention, although ruby will accept either style. See the example below.

def greet
  puts "hello world"
end

# Below are two valid ways to call the greet method.
greet   # this is preferred since greet does not expect parameters
greet()
#Parentheses are also optional when calling methods that do expect parameters. However, we prefer to call methods with parentheses in that scenario:

def greet(name)
  puts "hey " + name
end

# Below are two valid ways to call the greet method.
greet "programmers"
greet("programmers") # this is preferred since greet does expect parameters

