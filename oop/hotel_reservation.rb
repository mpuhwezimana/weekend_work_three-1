# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING HotelReservation ....."
puts

reservation = HotelReservation.new({customer_name: "Arsene Mpuhwe", data: "28 Apr 2017", room_number: 15})

reservation.room_number = 15
result = reservation.room_number

puts "Your method returned:"
puts result
puts

if result == 15
  puts "PASS"
else
  puts "FAIL"
end

reservation.add_a_fridge
result = reservation.amenities[0]

puts "Your method returned:"
puts result
puts
                             
if result == "fridge"
  puts "PASS"
else
  puts "FAIL"
end

reservation.add_a_crib
result = reservation.amenities[1]

puts "Your method returned:"
puts result
puts

if result == "crib"
  puts "PASS"
else
  puts "FAIL"
end

reservation.add_a_custom_amenity("Cofee")
result = reservation.amenities[2]

puts "Your method returned:"
puts result
puts

if result == "Cofee"
  puts "PASS"
else
  puts "FAIL"
end