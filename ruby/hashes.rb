#Create Hash, can be empty. Use driver code to ask questions, the answers creating keys for the hash and converting the responses into appropriate data type.  In the driver code ask an assortment of questions returning mix of strings, integers, and boolean data. Once data is entered, print hash of all answered questions. Let user evaluate this printed hash to see if their were any mistakes.  If their are mistakes, allow user to adjust by calling the key, if not have them input done.  Print latest version of hash and exit program.

Interior_Design_Form = {}

#Driver Code
puts "Client's Name?"
Interior_Design_Form[:name] = gets.chomp

p Interior_Design_Form