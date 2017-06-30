#Create Hash, can be empty. Use driver code to ask questions, the answers creating keys for the hash and converting the responses into appropriate data type.  In the driver code ask an assortment of questions returning mix of strings, integers, and boolean data. Once data is entered, print hash of all answered questions. Let user evaluate this printed hash to see if their were any mistakes.  If their are mistakes, allow user to adjust by calling the key, if not have them input done.  Print latest version of hash and exit program.

Interior_Design_Form = {}

#Driver Code
puts "Client's name?"
Interior_Design_Form[:name] = gets.chomp

puts "Client's age"
Interior_Design_Form[:age] = gets.chomp.to_i

puts "Client's address?"
Interior_Design_Form[:address] = gets.chomp

puts "Number of children?"
Interior_Design_Form[:number_children] = gets.chomp.to_i

puts "Does the client prefer warm tones? (y/n)"
tone_preferance = gets.chomp
Interior_Design_Form[:warm_tones] = tone_preference == "y"

puts "Does the client prefer a modern chic? (y/n)"
chic_preference = gets.chomp
Interior_Design_Form[:modern_chic] = chic_preference == "y"

p Interior_Design_Form