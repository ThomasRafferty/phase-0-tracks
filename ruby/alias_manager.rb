#In order to address this problem, as the lease says we should break it into parts. First, downcase everything to limit the amount of possible charters which we have to possible match later.  From their use a matching loop to distinguish between vowels and consonants.

def alias_manager(real_name)
  real_name.downcase

end

#Driver
puts "Please enter agent's real name to create an alias."
input_name = gets.chomp

alias_manager(input_name)