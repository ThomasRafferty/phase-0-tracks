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