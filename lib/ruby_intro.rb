# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+);
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1 then return false;
  else
    arr.combination(2).any? {|combo| sum(combo) == n}
  end
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  if s.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
    return false
  elsif s.length == 0
    return false
  elsif /^[^\W]/.match(s) == nil
      return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if (s =~ /[^01]/ || s.length == 0)
    return false
  elsif (s.to_i(2) % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if(isbn.length == 0)
      raise ArgumentError
    end
    if(price <= 0)
      raise ArgumentError
    end
    @isbn = isbn.to_s
    @price = price.to_f
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
      format("$%.2f",@price)
  end
end