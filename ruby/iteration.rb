def Hello_World
  name1 = "David"
  name2 = "Thomas"
  puts "Hello World!"
  yield(name1, name2)
  puts "Good bye World!"
end

Hello_World { |name1, name2|  puts "Its a cool world that #{name1} and #{name2} live in!"}