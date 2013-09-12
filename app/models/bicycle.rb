class Bicycle < ActiveRecord::Base
  attr_accessible :direction, :speed

  def turn direction
  	self.direction = direction
  end

  def accelerate
  	self.speed = [speed + 1, 20].min
  end

  def slow_down
  	self.speed -= 1
  end
end
