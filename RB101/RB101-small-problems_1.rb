# 1.  Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat_string(input_string, amount_repeated)
  amount_repeated.times do
    puts input_string
  end
end
p repeat_string("I am the GOAT", 3)

# 2. Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

# Use PEDAC on this problem!

#  Examples/Test cases
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Understand the Problem

#   Explicit Requirements
# - method takes one integer argument.
# - the argument can be positibe, negative, or zero
# - return true if the number's absolute value is odd
# - assume argument is a valid integer

#   Implicit Requirements
# - 0 considered an even number
# - if input is even, return false

# Data Structures
# Test cases return boolean values.
# Input: Integer
# Output: Boolean

# Algorithm

# Pseudocode
# create method is_odd? with one parameter
# take the given number and set it not equal to modulus by two.
# return whether value is true or false

# Code with intent

def is_odd?(integer)
  integer.odd?
end
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# 3. List of Digits
# Write a method that takes one argument, a positive integer, and returns
# a list of the digits in the number.

# Understand the problem

# Explicit Requirements
# - input is a positive integer only
# - Only one parameter
# - returns a list of digits in the number
# Implicit Requirements
# - return the list as an array
# input should be equal to it's values in a list

# Data Structure
# Input: Positive String
# Output: Array

# Examples/ Edge Cases
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Algorithm
# create method  digit_list
# change input into string
# split the string into individual characters with a single space
# iterate through the characters and convert back into numbers.
# return value

# Code with Intent

def digit_list(number)
  number.to_s.split("").map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5] # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# 4. How Many?
# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

# Understand the Problem:

# Explicit Requirements
# - input is a given array
# - counts the number of occureneces of each particular element in a given array
# - The words are case sensitive.
# print each element alongside the number of occurences

# Implicit Requirements
# - element is printed once no matter how many occurences in the return value
# - output is in the form of a hash

# Clarification Questions
# The method is only pertaining to this given array?

# Examples/ Edge Cases
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Structure:
# Input: given Array
# Output: Hash

# Algorithm
# create a new Hash
# iterate through the array
# assign each unique element from the array to the occurence hash
# iterate through the occurence hash and print the key and the value.

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

p count_occurrences(vehicles)

# 5 Reverse Order (Part 1)
# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Understand the Problem

# Explicit Requirements
# - Input is one string
# - Output returns the string in reverse order

# Implicit Requirements
# - reverses only the sequence of the words. not the words themselves
# - empty space will result always in "" or ''

# Examples/ Edge Cases

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Data Structure
# Input: String
# Output: String

# ALGORITHM
# Create method reverse_sentence
# create an empty array  called new_array
# create an array called word_array and set it to words being split with 1 space
# create a counter variable and set it  equal to word_array.size

# start a do loop
# create a variable called popped_word and set it to word_array having it's last element being removed
# break out of loop if  counter == 0
# append popped_word to new_array
# decrement counter by 1
# end

# join new_array and name it reverse_string
# return reverse string

def reverse_sentence(words)
  new_array = []
  word_array = words.split(" ")
  counter = word_array.size

  loop do
    popped_word = word_array.pop
    break if counter == 0
    counter -= 1
    new_array << popped_word
  end
  new_array.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Shorter solution provided by launch school

# def reverse_sentence(string)
# string.split.reverse.join(' ')
# end

# reverse_sentence("       ")

# 6. Reverse It (Part 2)
# Write a method that takes one argument, a string containing one or more words, and returns the given string
# with words that contain five or more characters reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Understand the Problem

# Explicit Requirments
# - contains one parameter
# - input is a string containing one or more words
# - Returns the input with words that contain five or more characters reversed
# - Each string will consist only of letters and spaces
# - Inlcude spaces only when one or more words are present

# Implicit Requirements
# - If only one word do not include spaces
# - Case Type does not matter
# - If not a string or space, prompt to re-enter

# Clarifications/ Questions
# - is the output returning String? I do not see in quotes but also does not seem to represent any other type.

# Example/ Edge Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure
# Input: String
# Output: String

=begin
ALGORITHM
=begin
Main method
- create method reverse_word(input)
  - create an empty array named result_array
  - if input is_string?
    - create word_array variable which equals the input split at each element with 1 space between each
    - iterate through each element of word_array
    - if the size of each particular element is >= 5
      - create variable reverse_element which equals the element backwards
      - append reverse_element onto result_array
    - else
    append remaining elements to result_array
    end inner if statement
  end block
  else
  when valid string is not given ask for the user to input valid string
  end outer if statement
  covert result_array to string with a space between words and name it final_result_string
  return final_result_string
end

    -

sub method
create is_string?(input_string)
    - check if input_string is a string or not
end

=end

def is_string?(input_string)
  input_string.instance_of?(String)
end

def reverse_words(input)
  result_array = []
  if is_string?(input)
    word_array = input.split(" ")
    word_array.each do |element|
      if element.size >= 5
        reverse_element = element.reverse
        result_array << reverse_element
      else
        result_array << element
      end
    end
  else
    puts "please input valid string"
  end
  final_result_string = result_array.join(" ")
end

puts reverse_words('Professional') # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS