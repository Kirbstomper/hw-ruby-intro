# When done, submit this entire file to the autograder.
# Christopher Smith
# Marcus Andra
# Part 1

def sum(x)
  # YOUR CODE HERE
  sum = 0
  x.each{|el| sum += el}# for each element in the array, adds it to the overall sum
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort.reverse
  size = arr.size
  
  case size # Using a case for the size of the array
  
  when 1
    return arr[0]
  
  when 0
    return 0
  else
    return arr[0]+arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #Nest for loop magic
  if arr.size>1
  for a in 0...(arr.size)# Outter for integer a
    for b in a+1...(arr.size)# Inner for integer b
    return true if ((arr[a]+arr[b]) == n) # returns true should any combination sum to n
    end
  end
  end
  return false# Returns false if not possible to sum to n
 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /^[^aeiou\d\W]/i =~ s
  # Using Regex it first checks at the beginning of the string if it matches any vowels, then if it matches any numbers then if it matches any special characters. 
  #The /i is to make it case insensitive
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (/^$/ =~ s)||(/[a-z2-9\W]/i =~ s) #Checks using regex first if the string is empty, then if the string contains anything other than 1s and 0s
    return false
  
  else
    return (s.to_i % 4) == 0 #if a binary string, converts to int and checks using mod if it is divisible by 4
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn_number, price)  # I have other ways on writing method starts_with_consonant?, let me know if you want it
  
  raise ArgumentError if (price<=0 || isbn_number=="")
  
  @isbn_number = isbn_number
  @price = price
  end
  
  def isbn
    return @isbn_number
  end
  
  def isbn=(isbn_number)
    @isbn_number = isbn_number
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
  


