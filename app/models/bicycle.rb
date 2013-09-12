class Bicycle < ActiveRecord::Base
  include Drivable
  attr_accessible :direction, :speed

  def acceleration
  	1
  end

  def top_speed
  	20
  end
end
