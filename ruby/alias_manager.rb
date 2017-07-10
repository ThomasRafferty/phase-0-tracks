#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

puts "How many agents would you like to create an alias for?"
agents_processed = gets.chomp.to_i
entry_counter = 0
until agents_processed == entry_counter

    def alias_manager(real_name)
      real_name.downcase!
      name_array = real_name.split('')
    end
    #   def next_vowel(name_array)
    #     vowel = ['a', 'e', 'i', 'o', 'u']
    #     vowel_input.map! do |old_vowel|
    #       if old_vowel == vowel[0]
    #           old_vowel = vowel[1]
    #       elsif old_vowel == vowel[1]
    #           old_vowel = vowel[2]
    #       elsif old_vowel == vowel[2]
    #           old_vowel = vowel[3]
    #       elsif old_vowel == vowel[3]
    #           old_vowel = vowel[4]
    #       elsif old_vowel == vowel[4]
    #           old_vowel = vowel[0]
    #       else
    #         old_vowel = old_vowel
    #       end
    #     end
    # p next_vowel(name_array)
    #   end
    #puts name_array
    end
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