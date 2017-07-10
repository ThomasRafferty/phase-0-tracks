#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

def alias_manager(real_name)
  real_name.downcase!
  name_array = real_name.split('')

  def next_vowel(name_array)
    vowel = ['a', 'e', 'i', 'o', 'u']
    real_name.each do |x| #Need do?

      vowel = ['a', 'e', 'i', 'o', 'u']
        if x == vowel[0]
          x = vowel[1]
        elsif x == vowel[1]
          x = vowel[2]
        elsif x == vowel[2]
          x = vowel[3]
        elsif x == vowel[3]
          x = vowel[4]
        else x == vowel[4]
          x = vowel[0]
        end
      end
  end
end
      puts real_name
      #vowel_loop = 0
#Driver
puts "Please enter agent's real name to create an alias."
input_name = gets.chomp

alias_manager(input_name)