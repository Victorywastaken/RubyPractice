# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
  result = []
  arr.each_index do |i|
    left = arr[i -1]
    middle = arr[i]
    right = arr[i + 1]

    if i == 0 && middle > right
      result << middle
    elsif i == arr.length - 1 && middle > left
      result << middle
    elsif middle > left && middle > right
      result << middle
    end
  end
  result
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
