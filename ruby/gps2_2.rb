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
def list_adder(list_adder_input, item_name, optional_quanity = 1)
  list_adder_input[item_name] = optional_quanity
  p list_adder_input
end
p list


# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

# DRIVER CODE ************************************************************************************************************************
create_list("carrots apples cereal pizza")
list_adder(list, "Bagels")

#list_adder(list, item_name, optional_quanity = 1)