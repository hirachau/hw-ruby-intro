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
  return arr[0] if len == 1
  arr.sort!
  arr[len-1] + arr[len-2]
end

def sum_to_n? arr, n
  arr.each_with_index do |elem1, index1|
    arr.each_with_index do |elem2, index2|
        return true if (n == elem1 + elem2) && (index1 != index2)
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = /[^aeiou]/
  return false if (/[\w]/.match(s[0]) == nil || s.length == 0) #first char non-word or zero length string
  return true if vowels.match(s[0].downcase) != nil         #first char not a vowel
end

def binary_multiple_of_4? s
  return false if (/[^10]/.match(s) != nil || s.length == 0) #reject non-binary
  return true if (s.to_i(2) % 4 == 0)
end

# Part 3

class BookInStock
  def price
    @price
  end

  def price=(p)
    @price = p
  end

  def isbn
    "isbn#{@isbn}"
  end

  def isbn=(i)
    @isbn = getIsbn(i)
  end

  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = getIsbn(isbn)
    @price = price.to_f
  end
  
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
  
  private
  def getIsbn i
    i.scan(/\d+/).join("").to_i
  end
end
