#Release 0
# We are taking a declared array and we are going construct a method that takes as an input an array and a possible integer in that array and returns its index number.

arr = [42, 89, 23, 1]

def search_array(input_array, input_search_integer)
  input_array.each do |x|
    if input_search_integer == x
      p (input_array.length) - input_array[0]
    # else input_search_integer != x
    #   print "nil"
    end
  end
end

search_array(arr, 23)