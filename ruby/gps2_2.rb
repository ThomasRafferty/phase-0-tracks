# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Split list of input items
# Assign each item to a key, with a value of 1
  # Set default quantity to 1
  # Print the list to the console. Once created, use print method.
# output: A HASH
def create_list(list_input)
  list_input_array = list_input.split(' ')
  list = {}
  list_input_array.each do |item|
     list[item] = 1
  end
  p list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Create method in taking the input arguments.  Within method add parameters key with optional quality as value.
  # Assign new item to a key with a value of 1, IF no optional quantity
# output: HASH with newly added item
def list_adder(list_input_adder, item_name_add, optional_quanity = 1)
  list_input_adder[item_name_add] = optional_quanity
end

# Method to remove an item from the list
# input: list, item name
# steps:
  # Create a method that takes the list parameter above and removes the key-value parameter specified.
# output: Hash without removed item
def list_remover(list_input_remover, item_name_remove)
  list_input_remover.delete(item_name_remove)
end

# Method to update the quantity of an item
# input: list (hash), existing item, new quantity
# steps:
  # define a method that will evaluate the list, the item, and the newly entered quantity
  # take each item in the list and check it against the new input item
  # if the items match, update the quantity of the existing item to new quantity
# output: New hash with an updated quantity of the item
def update_quantity(list, item, new_quantity)
  list.each do |key, value|
    if key == item
     list[key] = new_quantity
    end
  end
end

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
  #Create the method to print pretty list. Print a nice line identifying list.  Iterate through the hash printing first the value, the quantity of items on the list, then the item on the list.
# output: Pretty list
def pretty_up(list)
  puts "\nHere is your grocery list: "
  list.each do |key, value|
    puts value.to_s + ' ' + key.to_s
  end
end

# DRIVER CODE ************************************************************************************************************************
groceries = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1, "oranges"=>5}
pretty_up(groceries)

groceries_2 ={}
list_adder(groceries_2, "Lemonade", 2)
list_adder(groceries_2, "Tomatoes", 3)
list_adder(groceries_2, "Onions", 1)
list_adder(groceries_2, "Ice Cream", 4)
update_quantity(groceries_2, "Ice Cream", 1)
list_remover(groceries_2, "Lemonade")
pretty_up(groceries_2)

#Pseudocode is definitely something I need to work on to make my code accessible and to clarify my thinking.  One thing I learned from this challenge is to think more out input and output when I am pseudocoding.
#Arrays are nice for lists, particularly when there is no need to have additional information connected to the list items.  This challenged lent itself more to hashes for we wanted to attach quantities to the items on our grocery list.  So instead of having an array with ["ice cream", "pizza", "pizza", ect... ] we can have a hash with ["ice cream"=>1, "pizza"=>2, ect...]
#A method in ruby always returns one object.  That object can be nil.
#Methods can take all sorts of arguments including strings, integers, objects (which includes the previously listed), and even the output of another method.
#You can pass information between methods by executing a method as the argument in another method.
#This challenge reinforced working with hashes and adjusting their values.  I think everything this challenge currently makes sense to me, but there is a real possibility that I do yet know what I do not know.