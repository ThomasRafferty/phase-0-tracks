#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

puts "How many agents would you like to create an alias for?"
agents_processed = gets.chomp.to_i
entry_counter = 0
until agents_processed == entry_counter

     def alias_manager(real_name)

      real_name.downcase!
      name_array = real_name.split('')

      #changing the vowels in the array to the next vowel
      vowel = ['a', 'e', 'i', 'o', 'u']
      name_array.map! do |input_character|
       if input_character == vowel[0]
           input_character = vowel[1]
       elsif input_character == vowel[1]
           input_character = vowel[2]
       elsif input_character == vowel[2]
           input_character = vowel[3]
       elsif input_character == vowel[3]
           input_character = vowel[4]
       elsif input_character == vowel[4]
           input_character = vowel[0]
       else
         input_character = input_character
       end
     end


   end

input_name = "Thomas Raff"
alias_manager(input_name)

  entry_counter += 1
end
input_name = "Thomas"
alias_manager(input_name)

##   #Driver
## puts "Please enter agent's real name to create an alias."
## input_name = gets.chomp
##
## alias_manager(input_name)


#  name_array.map! { |name_array| name_array.next}


### Old Attempt
# def alias_manager(real_name)
#   real_name.downcase!
#   name_array = real_name.split('')
#
#   def next_vowel(name_array)
#     vowel = ['a', 'e', 'i', 'o', 'u']
#     real_name.each do |x| #Need do?
#
#       vowel = ['a', 'e', 'i', 'o', 'u']
#         if x == vowel[0]
#           x = vowel[1]
#         elsif x == vowel[1]
#           x = vowel[2]
#         elsif x == vowel[2]
#           x = vowel[3]
#         elsif x == vowel[3]
#           x = vowel[4]
#         else x == vowel[4]
#           x = vowel[0]
#         end
#       end
#   end
# end
#       puts real_name
#       #vowel_loop = 0
# #Driver
# puts "Please enter agent's real name to create an alias."
# input_name = gets.chomp
#
# alias_manager(input_name)