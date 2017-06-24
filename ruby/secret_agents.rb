# Use the indexed letters from the string to allow us to us the ".next" method to move every letter forward one.

def encrypt(string)
  string[0].next + string[1].next + string[2].next
end


def decrypt(string2)
  first_letter = string2[0]
  second_letter = string2[1]
  third_letter = string2[2]
  alpha = "abcdefghijklmnopqrstuvwxyz"
  new_index_1 = alpha.index(first_letter)-1
  new_index_2 = alpha.index(second_letter)-1
  new_index_3 = alpha.index(third_letter)-1
  new_letter_1 = alpha[new_index_1]
  new_letter_2 = alpha[new_index_2]
  new_letter_3 = alpha[new_index_3]
  print "#{new_letter_1}"+"#{new_letter_2}"+"#{new_letter_3}"
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")


