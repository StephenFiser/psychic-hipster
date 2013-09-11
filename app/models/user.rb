class User < ActiveRecord::Base
  has_many :memberships
  has_many :cars do
  	def blue
  		where(color: "Blue")
  	end
  end
  attr_accessible :first_name, :last_name
  scope :ordered, order("last_name")

  # def self.ordered
  # 	order("last_name")
  # end

  def active_memberships
  	memberships.active
  end

  def blue_cars
  	cars.blue
  end
end
