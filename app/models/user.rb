class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  def self.ordered
  	order("last_name")
  end
end
