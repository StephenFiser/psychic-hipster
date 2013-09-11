class Car < ActiveRecord::Base
  attr_accessible :color
  belongs_to :user

  # def self.blue
  # 	where(color: "Blue")
  # end
end
