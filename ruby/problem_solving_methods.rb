#Release 0
# We are taking a declared array and we are going construct a method that takes as an input an array and a possible integer in that array and returns its index number.

arr = [42, 89, 23, 1]

def search_array(input_array, input_search_integer)
  index = 1
  input_array.each do |x|
    if input_search_integer == x
      p index
    end
  index += 1
  end
  if index > input_array.length+1
    puts "nil"
  end
end

search_array(arr, 50)