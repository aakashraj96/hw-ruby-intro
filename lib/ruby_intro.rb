# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for element in arr
    sum = sum + element
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  x,y = arr.max(2)
  x+y
end

def sum_to_n? arr, n
  for i in (0..arr.length-1)
    for j in (i+1..arr.length-1)
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s =~ /\A[a-z&&[^aeiou]].*/i
end

def binary_multiple_of_4? s
  reversedString = s.reverse
  sum = 0
  invalid = false
  reversedString.each_char.with_index do |digit,i|
    if digit =~ /[^10]/i
      invalid = true
      break
    end
    if digit == '1'
      sum += 2**i
    end
  end
  if invalid or s.empty?
    return false
  end
  if sum % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn=(isbn)
    if isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [price]
  end
  
  attr_reader :isbn
  attr_reader :price
  
end
