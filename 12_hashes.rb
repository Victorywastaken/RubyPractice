# Data Structures: Hashes
# `key => value` pairs

my_hash = {
  "name" => "Victory",
  "color" => "red",
  "age" => "5",
  "isAwesome" => true
}

# Hash Methods
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

dog = {
  "name" => "Fido",
  "color" => "brown",
  "age" => "3",
  "isAwesome" => true
  "enemies" => ["cats", "dogs"]
}

puts dog.length # 5

dog["name"] = "Spot"
dog["location"] = "NYC"

puts dog
# {
#   "name"=>"Spot",
#   "color"=>"brown",
#   "age"=>"3",
#   "isAwesome"=>true,
#   "location"=>"NYC",
#   "enemies"=>["cats", "dogs"]
# }

dog["enemies"] << "squirrels"
puts dog
# "enemes" => ["cats", "dogs", "squirrels"]

dog = {
  "name" => "Fido",
  "color" => "brown",
  "age" => "3",
  "isAwesome" => true
  "enemies" => ["cats", "dogs"]
}

dog.has_key("color") # true
dog.has_key("location") # false

dog.has_value("Fido") # true
dog.has_value("5") # false

print dog.keys
# ["name", "color", "age", "isAwesome", "enemies"]

print dog.values
# ["Fido", "brown", "3", true, ["cats", "dogs"]]

#Hash Enumerables
# .each
# .each_key
# .each_value

pizza = {
  "style" => "New York",
  "slices" => "8",
  "diameter" => "12 inches",
  "toppings" => ["cheese", "sauce", "pepperoni"]
  "is_tasty" => true
}

pizza.each do |key, value|
  puts key
  puts value
  puts "-----"
end

# "style"
# "New York"
# "-----"
# "slices"
# "8"
# "-----"
# "diameter"
# "12 inches"
# "-----"
# "toppings"
# ["cheese", "sauce", "pepperoni"]
# "-----"
# "is_tasty"
# true


pizza.each_key do |key|
  puts key
end
# "style"
# "slices"
# "diameter"
# "toppings"
# "is_tasty"

pizza.each_value do |value|
  puts value
end

# "New York"
# "8"
# "12 inches"
# ["cheese", "sauce", "pepperoni"]
# true

# Hashes
# default value nil
# Hash.new(default)
# Counter Hash Strategy

my_hash = {
  "a" => 28
}

puts my_hash["b"] # nil
my_hash["b"] == nil # true

my_hash = Hash.new(0)

puts my_hash # {}
puts my_hash[a] # 0


counter = Hash.new(0)
str = "bootcamp prep"
str.each_char { |char| counter[char] += 1 }

# counter hash
# sort_by

counter.sort_by { |k, v| v }

# nil
#   represents "nothing" or "empty"
#   common appears as a default value

my_array = ["a", "b", "c"]
print my_array[2] # "c"
p my_array[3] # nil

