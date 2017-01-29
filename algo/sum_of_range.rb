# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)

  sum_of_range = 0
  
  if array[0] > array[1]     
    array = array[1]..array[0] 

    array.each do |number|
      sum_of_range += number
    end
      
  return sum_of_range

  else 
    array = array[0]..array[1]

    array.each do |number|
      sum_of_range += number
    end 

    return sum_of_range
  end 
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end