class Vehicle
  def initialize(color,weight)
    @color = color
    @weight = weight
  end
  
  def color
      @color
  end

  def weight
    @weight
  end

  def drive
    p "driving"
  end

  def stop
      p "stop"
  end
end

puts "This is a vehicle"

v = Vehicle.new
v.drive
v.stop
p v.color

puts "This is a car"

class Car < Vehicle
  def initialize(color, weight, wheels)
    super(color, weight)
    @wheels = wheels
  end

  def wheels
      @wheels = wheels
  end
end

c = Car.new("yellow", 5, 4)
c.drive
c.stop

