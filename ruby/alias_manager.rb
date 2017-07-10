#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

# puts "How many agents would you like to create an alias for?"
# agents_processed = gets.chomp.to_i
# entry_counter = 0
# until agents_processed == entry_counter

#Need to figure out how to get this array output
def array_preperation(input_name)
      input_name.downcase!
      name_array = input_name.split(' ')
      name_array.insert(0, name_array.delete_at(1))
      name_array = input_name.split('')
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
def consonant_changer(consonants_input)
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
   consonants_input.map! do |input_character_c|
      if input_character_c == consonants[0]
        input_character_c = consonants[1]
      elsif input_character_c == consonants[1]
        input_character_c = consonants[2]
      elsif input_character_c == consonants[2]
        input_character_c = consonants[3]
      elsif input_character_c == consonants[3]
        input_character_c = consonants[4]
      elsif input_character_c == consonants[4]
        input_character_c = consonants[5]
      elsif input_character_c == consonants[5]
        input_character_c = consonants[6]
      elsif input_character_c == consonants[6]
        input_character_c = consonants[7]
      elsif input_character_c == consonants[7]
        input_character_c = consonants[8]
      elsif input_character_c == consonants[8]
        input_character_c = consonants[9]
      elsif input_character_c == consonants[9]
        input_character_c = consonants[10]
      elsif input_character_c == consonants[10]
        input_character_c = consonants[11]
      elsif input_character_c == consonants[11]
        input_character_c = consonants[12]
      elsif input_character_c == consonants[12]
        input_character_c = consonants[13]
      elsif input_character_c == consonants[13]
        input_character_c = consonants[14]
      elsif input_character_c == consonants[14]
        input_character_c = consonants[15]
      elsif input_character_c == consonants[15]
        input_character_c = consonants[16]
      elsif input_character_c == consonants[16]
        input_character_c = consonants[17]
      elsif input_character_c == consonants[17]
        input_character_c = consonants[18]
      elsif input_character_c == consonants[18]
        input_character_c = consonants[19]
      elsif input_character_c == consonants[19]
        input_character_c = consonants[20]
      elsif input_character_c == consonants[20]
        input_character_c = consonants[0]
      else
        input_character_c
      end
    end
end

def alias_generator(input_array)
  alias_string = input_array.join
   alias_string.split.map{|x| x.capitalize}.join(' ')
end



agent_name = "Felicia Torres"
p alias_generator(consonant_changer(vowel_changer(array_preperation(agent_name))))


#alias_manager(input_name)
#  name_array.map! { |name_array| name_array.next}