=begin
this program that prints the numbers from 1 to 100. 
But for multiples of three print "Fizz" instead of the number 
and for the multiples of five print "Buzz". 
For numbers which are multiples of both three and five print "FizzBuzz".
Also if the number starts with the number 1, add “Bang” to the result
=end

number = 0
result = ""

# While number is less or equal than 100 print number from 0 to 100
while number <= 100

#for multiples of three print "Fizz" instead of the number 
 if number % 3 == 0
      result << "Fizz"
  end

#for the multiples of five print "Buzz".
  if number % 5 == 0
      result << "Buzz"
  end

 #create a string with the number value and if the number starts with the number 1, add “Bang”
  string_number = number.to_s 
  if string_number[0] == "1"
    result << "Bang"
  end

#any of the above
	if number % 3 != 0 && number %5 != 0 && string_number[0] != "1"
 		result = number
 	end

#give us the result going number+1
  puts result
  number=number+1
  result = ""
  

end