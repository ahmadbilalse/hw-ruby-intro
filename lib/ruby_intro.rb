# When done, submit this entire file to the autograder.

# Part 1

def price_as_string
  return "$%.2f" % 1.234
end

puts price_as_string

def sum arr
  result = 0
  arr.each do |num|
    result = result + num
  end
  return result
end

def max_2_sum arr
  if arr.length == 0 
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  sorted_arr = arr.sort.reverse
  return sorted_arr[0] + sorted_arr[1]
end

def sum_to_n? arr, n
  if arr.length >= 2
    new_arr = arr.combination(2).reject do |p|
      p.inject(:+) != n
    end
    return new_arr.length > 0
  else
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s.match /^[^AEIOUaeiou\W]/
end

def binary_multiple_of_4? s
  if s.match(/[^01]/)
    return false
  end
  s == "0" or s.split(//).last(2).join == "00"
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  attr_reader :isbn
  attr_reader :price

  def validateIsbn(isbn)
    if isbn.empty?
      raise ArgumentError.new
    end
  end

  def validatePrice(price)
    if price <= 0
      raise ArgumentError.new
    end
  end

  def isbn=(isbn)
    validateIsbn(isbn)
    @isbn = isbn
  end

  def price=(price)
    validatePrice(price)
    @price = price
  end

  def price_as_string
    return "$%.2f" % @price
  end

end
