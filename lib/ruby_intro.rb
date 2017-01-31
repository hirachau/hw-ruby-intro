# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|elem| sum += elem}
  return sum
end

def max_2_sum arr
  len = arr.size
  return 0 if len == 0
  return arr[1] if len == 1
  arr.sort!
  arr[len-1] + arr[len-2]
end

def sum_to_n? arr, n
  arr.each do |elem1|
    arr.each do |elem2|
        return true if n == elem1 + elem2
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, ${name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
