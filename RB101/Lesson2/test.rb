=begin

P. Understand the Problem
  Explicit Requirements:
  - Given an array of n positive integers & a positive integer, find the smallest length of a contingous subarray for which the sum is >= integer


  Implicit Requirements:
  - if there is not a length sum from the contingous subarray  that is >= integer
    return 0
  -  if the positive integer is 9 for example and your subarray consist of [1,4,6,2]
      at the first integer the value 1 is not >= to 9
      at integer one, 4 plus the first index 1 is not >=5
      with the third integer 6. we surpass 9 and that is the smallest possible length within this example to meet the criteria of >= 9

  Clarifications/ Questions:
  - Why does the 3rd edge case return 4 digits when one of the digits of the array is the same value
    as the posiitive integer
    - continous here shows that you have to evaluate the length from the starting index going forward
  - is contingous in this case all of the succeeding integers within the array?


E: Examples/ Edge Cases
- # p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
- # p minSubLength([1, 10, 5, 2, 7], 9) == 1
- # p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
- # p minSubLength([1, 2, 4], 8) == 0


D: Data Structures
  - input: an array of n length and a positive integer
  - output: an integer
  -possible path: perhaps a new array that is appended


A: Algorithm
def minSUbLength(arr, positive_int)
  - initiallize arr check_value
  - initiallize counter to 0
  - set check_value = to arr[0]
  loop do
  - if check_value is greater or equal  to positive_int
    - break if the value of check_value is greater or equal to positive_int
  - else
    - counter += 1
    - append arr[counter] to check_value
    - break if the value of check_value is greater or equal to positive_int
  - end
  return the lenght of check_value
 end

C: Code with intent
P. Understand the Problem
Explicit Requirements:
- Given an array of n positive integers & a positive integer, find the smallest length of a contingous subarray for which the sum is >= integer


Implicit Requirements:
- if there is not a length sum from the contingous subarray  that is >= integer
  return 0
-  if the positive integer is 9 for example and your subarray consist of [1,4,6,2]
    at the first integer the value 1 is not >= to 9
    at integer one, 4 plus the first index 1 is not >=5
    with the third integer 6. we surpass 9 and that is the smallest possible length within this example to meet the criteria of >= 9

Clarifications/ Questions:
- Why does the 3rd edge case return 4 digits when one of the digits of the array is the same value
  as the posiitive integer
  - continous here shows that you have to evaluate the length from the starting index going forward
- is contingous in this case all of the succeeding integers within the array?


E: Examples/ Edge Cases
- # p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
- # p minSubLength([1, 10, 5, 2, 7], 9) == 1
- # p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
- # p minSubLength([1, 2, 4], 8) == 0


D: Data Structures
- input: an array of n length and a positive integer
- output: an integer
-possible path: perhaps a new array that is appended


A: Algorithm
def minSUbLength(arr, positive_int)
- initiallize arr check_value
- initiallize counter to 0
- set check_value = to arr[0]
loop do
- if check_value is greater or equal  to positive_int
  - break if the value of check_value is greater or equal to positive_int
- else
  - counter += 1
  - append arr[counter] to check_value
  - break if the value of check_value is greater or equal to positive_int
- end
return the lenght of check_value
end

C: Code with intent

def minSubLength(arr, positive_int)
  check_value = []
  counter = 0
  check_value << arr[0]
  p total_sum = check_value.reduce( {|sum, num| sum += num}
  loop do
    if check_value >= positive_int
      break
    else
      counter += 1
      check_value >> arr[counter]
      break if check_value >= positive_int
    end
  end
  p check_value
end

p minSubLength([1,2,3,1], 4)


=end
