# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  s = 0
  arr.each {|x| s += x}
  s
end

def max_2_sum (arr)
  case arr.length
    when 0 
      0
    when 1 
      arr[0]
    else
      sum arr.sort[-2, 2]
  end
end

def sum_to_n? (arr, n)
  arr.combination(2).any? {|a,b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? (s)
  s =~ /^(?=[a-z])[^aeiou]/i
end

def binary_multiple_of_4? (s)
  s =~ /^(?:[01]+00|0+)$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError unless isbn =~ /^[a-z0-9\-]+$/i && price > 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format('$%.2f', @price)
  end
end
