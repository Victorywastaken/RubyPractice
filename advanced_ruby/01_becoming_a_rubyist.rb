#Implicit Returns
#Methods in Ruby will automatically return the evaluation of their last executed expression. You will still need to use the explicit return keyword to do an early return.

# Less preferred
def get_avg(num_1, num_2)
    return (num_1 + num_2) / 2
end

# Preferred by a Rubyist
def get_avg(num_1, num_2)
    (num_1 + num_2) / 2
end
#Omitting parentheses for method calls with no arguments
#When calling a method without passing any arguments, we'll often drop the parentheses altogether.

def say_hi
    puts "hi"
end

# Less preferred
say_hi()

# Preferred by a Rubyist
say_hi

