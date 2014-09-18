# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end

#Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h' =>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  a_string = a_string.gsub(/[[:space:]]/,'')
  a_string = a_string.downcase
  letter = 0
  letterMap = Hash.new
  while letter < a_string.length
    thisLetter = a_string[letter]
    letterMap[thisLetter] = a_string.count(thisLetter)
    letter += 1
  end
  letterMap
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  sum = 0.0
  an_array = an_array.flatten
  for n in an_array
    if n.class == Float || n.class == Fixnum
      sum = sum + n
    end
  end
  sum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  fizzBuzzArray = Array.new
  for num in 1..100
    if num.to_f / 3.to_f == num/3 && num.to_f / 5.to_f == num/5 then
	fizzBuzzArray << 'FizzBuzz'
    elsif num.to_f / 3.to_f == num/3 then
	fizzBuzzArray << 'Fizz'
    elsif num.to_f / 5.to_f == num/5 then
	fizzBuzzArray << 'Buzz'
    else
        fizzBuzzArray << num
    end
  end
  fizzBuzzArray
end

# Uncomment each of these to test your functions
puts reverse([3,6,'dog']).inspect
puts histogram('The Quick brown fox').inspect
puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
puts fizzbuzz.join("\n")


