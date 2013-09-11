class Membership < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :name

  def self.active
  	where(active: true).order("name")
  end
end
