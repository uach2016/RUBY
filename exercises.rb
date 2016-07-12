=beging 
THIS PROGRAME CAN TAKE A FILE WITH ITS ORIGINAL DESTINATION
AND MOVE TO THE DESTINATION YOU CHOSE
=end

puts "What is the source file?"#First we need to ask the user to choose the source file
source_filename = gets.chomp #Next we need to get and save the user’s response
source_file_contents = IO.read(source_filename)#we need to get the contents

puts "What is the destination filename?"#Now we need to ask the user for the destiantion
destination_filename = gets.chomp#we need to get and save the user’s response

IO.write(destination_filename, source_file_contents) #with this method we write our destination, with the file_contents we have.

#CHECK IT IF IT'S WORKING