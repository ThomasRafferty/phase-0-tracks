puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level?"
volume = gets.chomp
puts "What color is the hamster?"
fur_color =gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption_status = gets.chomp
puts "About what is the hamster's age?"
hamster_age = gets.chomp
if hamster_age == ""
  hamster_age = nil
end