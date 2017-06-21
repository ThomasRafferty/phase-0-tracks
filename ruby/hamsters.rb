puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level?"
volume = gets.chomp.to_i
puts "What color is the hamster?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption_status = gets.chomp
puts "What do think the hamster's age is?"
hamster_age = gets.chomp.to_f

puts "This hamster name is #{name}.  He is a pretty #{fur_color} hamster.  He volume level is #{volume}.  He is a #{adoption_status} candidate for adoption.  Her age is #{hamster_age}."