class Car < ActiveRecord::Base 
  include Drivable
  attr_accessible :color, :speed, :direction
  belongs_to :user

  def acceleration
  	10
  end

  def top_speed
  	100
  end

  # def self.blue
  # 	where(color: "Blue")
  # end
end
