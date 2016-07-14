=begin
THE FOLLOWING FUNCTION TAKES AN ENCRYPTED STRING AND 
RETURN THE UNENCRYTEPTED STRING.
=end

def caesar_cipher(string, shift = -1)
  alphabet   = Array('a'..'z')# GIVE AN ARRAY WITH ALL LETTERS IN THE ALPHABET.
  rotate  = Hash[alphabet.zip(alphabet.rotate(shift))]#WE CREATE A HASH AND GIVE A VALUE FOR EVERY LETTER DEPENDS ON THE SHIFT WE CHOOSE.
  string.chars.map { |c| rotate.fetch(c, " ") }.join#WE ITENERATE IN EACH CHARACTER OF THE STRING AND GIVE US THE CHARACTER UNENCRYTEPTED.
end
#WE CHANGE THE SHIFT AS WE WANT#

puts caesar_cipher("ifmmp")
#CHECK THIS WILL GIVE US HELLO

