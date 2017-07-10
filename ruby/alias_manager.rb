#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

puts "How many agents would you like to create an alias for?"
agents_processed = gets.chomp.to_i
entry_counter = 0
until agents_processed == entry_counter

     #Need to figure out how to get this array output
def array_preperation(input_name)
      input_name.downcase!
      name_array = real_name.split('')
end


#Changing the vowels in the array to the next vowel
def vowel_changer(vowel_input)
  vowel = ['a', 'e', 'i', 'o', 'u']
  vowel_input.map! do |input_character_v|
    if input_character_v == vowel[0]
        input_character_v = vowel[1]
    elsif input_character_v == vowel[1]
        input_character_v = vowel[2]
    elsif input_character_v == vowel[2]
        input_character_v = vowel[3]
    elsif input_character_v == vowel[3]
        input_character_v = vowel[4]
    elsif input_character_v == vowel[4]
        input_character_v = vowel[0]
    else
        input_character_v
    end
  end
end

#Changing consonants in array to next consonants
def consonant_changer(consonants_transformation)
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
   consonants_transformation.map! do |input_consonant|


end



      #Changing consonants in array to next consonants
      consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
      name_array.map! do |input_consonant|
        if input_consonant == c
   end
        # elsif input_character == character
        #    input_character = character[+1]
input_name = "Thomas Rafferty"
alias_manager(input_name)
#  name_array.map! { |name_array| name_array.next}