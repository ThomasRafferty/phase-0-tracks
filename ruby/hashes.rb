#Create Hash, can be empty. Use driver code to ask questions, the answers creating keys for the hash and converting the responses into appropriate data type.  In the driver code ask an assortment of questions returning mix of strings, integers, and boolean data. Once data is entered, print hash of all keys with answers. Let user evaluate this printed hash to see if their were any mistakes.  If their are mistakes, allow user to adjust by calling the key, if not have them input done.  Print latest version of hash and exit program.

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
tone_preference = gets.chomp
Interior_Design_Form[:warm_tones] = tone_preference == "y"

puts "Does the client prefer a modern chic? (y/n)"
chic_preference = gets.chomp
Interior_Design_Form[:modern_chic] = chic_preference == "y"

require 'pp'
pp Interior_Design_Form

#User Verification of entered data
puts "Is the client's information correct?  If correct enter done, if not enter the key which needs to be corrected."

correction = gets.chomp
correction_entered =false
until correction_entered
  if
    correction == "done"
    correction_entered = true
  elsif
    correction == "name"
    puts "Please enter correct name."
    Interior_Design_Form[:name] = gets.chomp
    correction_entered = true
  elsif
    correction == "age"
    puts "Please enter correct age."
    Interior_Design_Form[:age] = gets.chomp.to_i
    correction_entered = true
  elsif
    correction == "address"
    puts "Please enter correct address."
    Interior_Design_Form[:address] = gets.chomp
    correction_entered = true
  elsif
    correction == ("number_children")
    puts "Please enter correct number of children."
    Interior_Design_Form[:number_children] = gets.chomp.to_i
    correction_entered = true
  elsif
    correction == ("warm_tones")
    puts "Please enter does client like warm tones? (y/n)"
    tone_preference = gets.chomp
    Interior_Design_Form[:warm_tones] = tone_preference == "y"
    correction_entered = true
  elsif
    correction == ("modern_chic")
    puts "Please enter does client like modern chic? (y/n)"
    chic_preference = gets.chomp
    Interior_Design_Form[:modern_chic] = chic_preference == "y"
    correction_entered = true
  else
    puts "I did not understand you which key you would like to correct?  If finished enter done."
    correction = gets.chomp
  end
end

require 'pp'
pp Interior_Design_Form
