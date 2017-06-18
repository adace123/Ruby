class TrafficSignal

  def initialize(green,yellow,red)
    @green = green
    @yellow = yellow
    @red = red
  end
  
  def green
    @green
  end
  
  def yellow
    @yellow
  end
  
  def red
    @red
  end
  
  def cycle
    puts "#{@green} seconds of green\n#{@yellow} seconds of yellow\n#{@red} seconds of red"
  end
end


class LeftTurnSignal < TrafficSignal
  
  def initialize(green,yellow,red,turn)
    super(green,yellow,red)
    @turn = turn
  end
  
  def turn
    @turn
  end
  
  def cycle
    puts "#{super}#{@turn} seconds of left turning"
  end
  
end

lt = LeftTurnSignal.new(50,10,20,5)
lt.cycle

class LightBulb

   def initialize( watts, on )
    @watts = watts
    @on = on
   end

   def watts
    @watts
   end

   def on
    @on
   end

   def turnon
    @on = true
   end

   def turnoff
    @on = false
   end

   def to_s
    "#{@watts}-#{@on}"
   end

 end
 
class Lamp

  def initialize(make,model,cost,watts)
    @make = make
    @model = model
    @cost = cost
    @watts = watts
    @bulb = LightBulb.new(watts,on=true)
  end
  
  def make
    @make
  end
  
  def model
    @model
  end
  
  def turnon
    @bulb.turnon
  end
  
  def turnoff
    @bulb.turnoff
  end
  
  def bulb
    @bulb.to_s
  end
  
end

lamp = Lamp.new("LampCo","A-1234",30.00,60)
lamp.turnon
