class User < ActiveRecord::Base
  has_many :memberships
  attr_accessible :first_name, :last_name
  scope :ordered, order("last_name")

  # def self.ordered
  # 	order("last_name")
  # end

  def active_memberships
  	memberships.active
  end
end
