#Release 0
def Hello_World
  name1 = "David"
  name2 = "Thomas"
  puts "Hello World!"
  yield(name1, name2)
  puts "Good bye World!"
end

Hello_World { |name1, name2|  puts "Its a cool world that #{name1} and #{name2} live in!"}


#Release 1

nyc_sports_teams = ["knicks", "nets", "mets", "yankees", "jets", "giants"]

nyc_sports_teams.each {|teams|puts teams}

nyc_sports_teams.map! do |teams|
  if
    teams.length > 6
    teams + " suck"
  else
    teams
  end
end

p nyc_sports_teams


english_to_spanish = {
  hi:"hola",
  bye:"adios",
  soccer:"futbol"
}

english_to_spanish.each do |eng, span|
  puts "#{eng} in English is #{span} in Spanish."
end


#Release 2

#Question 1
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

numbers.delete_if {|x| x<5 }
p numbers

#Question 2
numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p numbers2.drop_while {|y| y < 3}

#Question 3
numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p numbers3.select{|num| num.even?}


#alpha = ["a", "b", "c", "d"]

#number_to_word = {
#  1: one,
#  2: two,
#  3: three,
#  4: four,
#  5: five,
#  6: six
#}
#