#Release 0
# We are taking a declared array and we are going construct a method that takes as an input an array and a possible integer in that array and returns its index number.
puts "Release 0"
arr = [42, 89, 23, 1, 7]

def search_array(input_array, input_search_integer)
  index = 0
  input_array.each do |x|
    if input_search_integer == x
      p index
      break
    end
  index += 1
  end
  if index+1 > input_array.length
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

puts ""
puts "Release 1"
def fib(input_fibonacci)
    fib_array = []
  if input_fibonacci == 1
    fib_array.push(0)
  elsif input_fibonacci == 2
    fib_array.push(0)
    fib_array.push(1)
  else
    fib_array = [0, 1,]
    until fib_array.length == input_fibonacci
      fib_array.push(fib_array[-1]+fib_array[-2])
    end
  end
  p fib_array
end


#Driver Code
puts "How many numbers of the Fibonacci sequence would you like to see?"
desired_index_fibonacci = gets.chomp.to_i

fib(desired_index_fibonacci)

puts ""

puts "Is the 100 Fibonacci number equal to  218922995834555169026?"
p fib(100).last == 218922995834555169026


# Release 2
# Bubble sort method works by declaring the value of variable (n) as the length of the array being sorted.  Then create a loop that goes through each pair of elements of the array swapping the pair if the value of the lower indexed number is greater than the value of the higher (second) indexed number.

puts ""
puts "Release 2"
arr = [ 6, 4, 7, 6, 7, 8, 2, 6, 1, 9]
arr2 = [4, 3, 6, 2, 6, 1, 6, 2, 1, 0]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort(arr)
p bubble_sort(arr2)