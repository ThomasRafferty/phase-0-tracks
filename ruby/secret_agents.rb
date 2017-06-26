# Use the indexed letters from the string to allow us to us the ".next" method to move every letter forward one.

def encrypt(string_e)
  index = 0
  while index < string_e.length
  z_score = string_e.index"z"
    if z_score != nil
      string_e[index] = "a"
      index += 1
    else
      string_e[index] = string_e[index].next!
      index += 1
    end
  end
  puts string_e
end

def decrypt(string_d)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string_d.length
    working_letter = string_d[index]
    working_index = alpha.index(working_letter)-1
    string_d[index] = alpha[working_index]
  index += 1
  end
  puts string_d
end



#puts encrypt("abc")
puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))
