# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  else
    sums=0
    for i in arr
      sums+=i
    end
    return sums
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    temp = arr.sort
    max1 = temp[-1]
    max2 = temp[-2]
    return max1+max2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #boolean
  if arr == []
    return false
  end
  
  if arr.length == 1
    return false
  end
  
  for i in 0...arr.length
    for j in (i+1)...arr.length
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
  
  return false
    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  
  s = s.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
#we need to advoid isdn to become empty and price is negative or zero
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.size==0 || price<=0
      raise(ArgumentError) 
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end
end
