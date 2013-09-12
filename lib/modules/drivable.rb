module Drivable

  def turn direction
  	self.direction = direction
  end

  def accelerate
  	self.speed = [speed + acceleration, top_speed].min
  end

  def slow_down
  	self.speed -= acceleration
  end
end