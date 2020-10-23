#MIT License

#Copyright (c) 2020 Jean-Jacques François Reibel

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

class Car
  property wheels : Int32
  property doors : Int32
  property cylinders : Int32
  def initialize(wheels : Int32, doors : Int32, cylinders : Int32)
    @wheels = wheels
    @doors = doors
    @cylinders = cylinders
  end

  def wheels
    @wheels
  end

  def doors
    @doors
  end

  def cylinders
    @cylinders
  end

  def addWheels(wheelsIn : Int32)
    @wheels = @wheels + wheelsIn
  end

  def addDoors(doorsIn : Int32)
    @doors = @doors + doorsIn
  end

  def addCylinders(cylindersIn : Int32)
    @cylinders = @cylinders + cylindersIn
  end

  def deleteWheels(wheelsIn : Int32)
    @wheels = @wheels - wheelsIn
  end

  def deleteDoors(doorsIn : Int32)
    @doors = @doors - doorsIn
  end

  def deleteCylinders(cylindersIn : Int32)
    @cylinders = @cylinders - cylindersIn
  end
end

puts "Creating car."
subaru = Car.new(4, 4, 4)
puts "Wheel check: #{subaru.wheels}"
puts "Door check: #{subaru.doors}"
puts "Cylinder check:  #{subaru.cylinders}"
puts ""
puts "Adding wheel directly to car object."
subaru.wheels = 5
puts "Wheel check: #{subaru.wheels}"
puts "Door check: #{subaru.doors}"
puts "Cylinder check:  #{subaru.cylinders}"
puts ""
puts "Removing wheel using object method."
subaru.deleteWheels(1)
puts "Wheel check: #{subaru.wheels}"
puts "Door check: #{subaru.doors}"
puts "Cylinder check:  #{subaru.cylinders}"
puts ""
