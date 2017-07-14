#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later, and create an array from the input name. Also this might be a good time to flip the names. From their use a conditional loop if the characters from the name match a constructed array, doing so for each vowels and consonants.  Then put the array back together and capitalize the first letter of each name.


#This method should take the name provided by user, downcase it, flip the names and then turn all the characters into a array
def array_preperation(input_name)
      downcase_name = input_name.downcase
      name_split = downcase_name.split(' ')
      name_flip = name_split.insert(0, name_split.delete_at(1)).join(' ')
      name_array = name_flip.split('')
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

#Puts array back into a string and capitalizes the first letter of each name.
def alias_generator(input_array)
  alias_string = input_array.join
  alias_string.split.map{|x| x.capitalize}.join(' ')
end


agent_list = []
alias_list = []
database = [agent_list, alias_list]
loop do
  puts "Enter agent name to generate alias. (When complete, enter quit)"
  agent_name = gets.chomp
  break if agent_name == "quit"
  agent_list << agent_name
  alias_list << alias_generator(consonant_changer(vowel_changer(array_preperation(agent_name))))
end

index = 0
until index == agent_list.length
  puts "#{database[1][index]} is actually #{database[0][index]}."
  index +=1
end