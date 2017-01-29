# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote
  attr_accessor :tv
  def initialize(remote_attribute)
    @televisions =remote_attribute[:tv]
  end

  def toggle_power
    if @power == "on"
      puts "off"
    else
      puts "on"
    end
  end

  def increment_volume
    @volume += 1
  end

  def decrement_volume
    @volume -= 1
  end

  def set_channel(integer)
    @channel == integer
  end
end

class Tv < Remote
  attr_accessor :power, :volume , :channel
  def initialize(tv_attributes)
    super
    @power = tv_attributes[:power]
    @volume = tv_attributes[:volume]
    @channel = "unkown"
  end
end


# The driver code

puts "TESTING in progress..."
puts

tv1 = Tv.new({power: "off", volume: 10, channel: "4"})
remote = Remote.new({tv:[tv1]})

result = tv1.toggle_power
puts "Power status returned:"
puts

if result == "on"
  puts "PASS!"
else
  puts "F"
end

puts
result = tv1.increment_volume
puts "Volume returned:"
puts result

puts

if result == 11
  puts "PASS!"
else
  puts "F"
end
puts

result = tv1.decrement_volume

puts "volume returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = tv1.set_channel(10)

puts "Channel returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end