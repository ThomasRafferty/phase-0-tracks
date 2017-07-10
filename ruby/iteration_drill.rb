# Array Drills
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |supply_item|
  puts "* #{supply_item}"
end
# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

# Could not figure out how to only have one outcome print :(

def item_deterctor(item_list_checked, possible_item)
  item_list_checked.each do |item_looking_for|
    if item_looking_for == possible_item
      puts "Item looking for was this item!"
    else
      puts "Item looking for was not this item."
    end
  end
end
puts "What item would you like to check to see if in zombie apocalypse supplies?"
item_check = gets.chomp
item_deterctor(zombie_apocalypse_supplies, item_check)
# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
until zombie_apocalypse_supplies.length == 5
  zombie_apocalypse_supplies.pop
end
p zombie_apocalypse_supplies
# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
other_survivor_supplies_index = 0
until other_survivor_supplies_index == other_survivor_supplies.length
  zombie_apocalypse_supplies.push(other_survivor_supplies[other_survivor_supplies_index])
  other_survivor_supplies_index += 1
end
zombie_apocalypse_supplies.uniq!
p zombie_apocalypse_supplies
# ----

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, extinction_date|
  puts "#{animal}-#{extinction_date}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
extinct_animals.each do
  extinct_animals.delete_if { |animal, extinction_date| extinction_date < 2000}
end

p extinct_animals


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

#Could not undo deleted animals
extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

extinct_animals.each { |animals, extinction_date| extinct_animals[animals] = extinction_date+3}

p extinct_animals


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

# Could not figure out how to only have one outcome print :(

    def animal_deterctor(input_extinction_list, possibly_extinct_animal)
        input_extinction_list.each do |animal_look_up, extinction_date|
        p possibly_extinct_animal
        if animal_look_up == possibly_extinct_animal
          p true
          p "NOOOOOOOOOOOOOOOOOO!"
        else animal_look_up != possibly_extinct_animal
          p false
        end
      end
    end

p animal_deterctor(extinct_animals, "Andean Cat")
p animal_deterctor(extinct_animals, "Dodo")
p animal_deterctor(extinct_animals, "Saiga Antelope")



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

p extinct_animals.delete("Passenger Pigeon")
p extinct_animals


#or

#p extinct_animals.shift
#p extinct_animals