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
