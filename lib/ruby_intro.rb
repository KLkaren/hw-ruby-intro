# When done, submit this entire file to the autograder.

# Part 1

# Deinfe a method that takes an array as an argument and returns the sum of its elements
# For an empty array, it returns zero

def sum arr
    arr.reduce 0,:+
end

# Deine a mothod that takes an array of integers as an argument and returns the sum of its two largest elements
# For an empty array, it returns zero

def max_2_sum arr
    sum(arr.sort.last(2))
end

# Define a method that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array sum to n

def sum_to_n? arr, n
    arr=[0] if (arr.nil? || arr.empty?)
    arr.combination(2).any? {|a,b| (a+b)==n}
end

# Part 2

# Deine a method that takes a string representing a name and returns the string "Hello," concatenated with the name
def hello(name)
    if name.is_a? String
        "Hello, #{name}"
    end
end

# Define a method that takes a string and returns true if it starts with a consonant and false otherwise
def starts_with_consonant? s
    /^[^aeiou\W]/i.match(s) != nil
end

# Define a method that takes a string and returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
    if s == "0"
        return true
    end
    else
        /^[10]*00$/.match(s) != nil
end

# Part 3
# Define a class which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes
class BookInStock
    
    attr_accessor :isbn, :price
    
    def initialize(isbn,price)
        raise ArgumentError if isbn.empty? || price<=0
        @isbn = isbn
        @price = price
    end
    
    def price_as_string
        sprintf("$%.2f",@price)
    end
    
end
