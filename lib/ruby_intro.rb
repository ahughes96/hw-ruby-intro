# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  i=0
  sum=0
  while i < arr.length
       sum += arr[i]
       i = i + 1
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  i=0
  sum=0
  if arr.length == 1
    return arr[i]
  end
    
  g1=arr[i+1]
  g2=arr[i]
  
  while i < arr.length
    if arr[i] >= g1
      g2=g1
      g1=arr[i]
    end
    i += 1
    sum=g1+g2
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  i=0
  j=1
  sum=0
  
  while i < arr.length - 1 
    while j < arr.length 
      
       sum = arr[i] + arr[j]
       if sum == n
         return true
       end 
       j += 1
    end
    i += 1
    j=i+1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   return "Hello, " + name 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[qwrtypsdfghjklzxcvbnm]/i=~s 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^(?:[01]*0)?0$/=~s
 
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn
 attr_accessor :price
def initialize(isbn, price)  
    # Instance variables  
    if (isbn == '') | (price <= 0 )
      raise ArgumentError
    end 
    
    @isbn = isbn
    @price = price 
    
end  
  
  def price_as_string 
    return "$" + sprintf('%.2f',@price).to_s
   
  end
end
