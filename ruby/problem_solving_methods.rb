#Release 0
# We are taking a declared array and we are going construct a method that takes as an input an array and a possible integer in that array and returns its index number.

arr = [42, 89, 23, 1]

def search_array(input_array, input_search_integer)
  index = 1
  input_array.each do |x|
    if input_search_integer == x
      p index
      break
    end
  index += 1
  end
  if index > input_array.length
    puts "nil"
  end
end

search_array(arr, 42)
search_array(arr, 89)
search_array(arr, 0)
search_array(arr, -1)
search_array(arr, 23)
search_array(arr, 1)
search_array(arr, 100)

#Release 1
#Construct an array that continues to increase the size of the array by adding new elements. This new element should be calculated by using the last two elements of the array.

def fib(desired_index_fibonacci)
    fib_array = [0, 1, 1]
  until fib_array.length == desired_index_fibonacci
    fib_array.insert(-1, "cat")
  end
  p fib_array
end

fib(8)