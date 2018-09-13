# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  sum=0
  arr.each{ |x| sum+=x}
  return sum
end

def max_2_sum (arr)
	if(arr.empty?) then return 0
	elsif (arr.size==1) then return arr[0]
	else
		sorted_arr=arr.sort
		return sorted_arr[-1]+sorted_arr[-2]
	end
end

def sum_to_n? (arr, n)
  if (arr.empty?|(arr.size==1))then return false
  else
  	h_arr= Hash.new
  	arr.each{
  		|a| 
  		if h_arr.key? a
  			return true
  		else
  			h_arr[n-a] = n
  		end
  	}
  	return false
  end
end

# Part 2

def hello(name)
   "Hello, #{name}"
end

def starts_with_consonant? (s)
      s =~ /^(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? (s)
  if (s == "0") 
  	return true
  else
	return (/^[10]*00$/.match(s) != nil)
  end
end

# Part 3

class BookInStock
  	#Setters and Getter for the attributes using attr_accessor
  	attr_accessor :isbn
  	attr_accessor :price
	
	#Constructor
	def initialize(isbn, price)
		#Check whether isbn is not an empty string 
		#Check whether price is greater than 0
		# Then assign values to objects
		if isbn.empty?  or price <= 0 then raise ArgumentError, "Arguments have invalid values"
		else
			@isbn = isbn
			@price = price
		end
	end

	#Method to return price of book in the specified format
	def price_as_string
		sprintf("$%.2f", @price)
	end
end
