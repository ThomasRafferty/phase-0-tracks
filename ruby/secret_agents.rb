# Use the indexed letters from the string to allow us to us the ".next" method to move every letter forward one.

def encrypt(string)
  string[0].next + string[1].next + string[2].next
end

puts encrypt("abc")