=begin
THIS FUNTION TAKES A STRING AND PASS INTO ARRAY 
THEN SORT EVERY ELEMENT AND RETURN THE STRING
SORTED KEEPING THE CAPITALIZED WORD AS THEY WERE
IN THE BEGINNING
=end
	

def array_to_sentence(string)
	string = string.split()#with (split)I turn my string into array
	return string.sort { |a,b| a.upcase <=> b.upcase }#sort the array keeping the capitalized words
end
puts array_to_sentence("What the hell are you talking about, I finally figured this out!")#check my function/