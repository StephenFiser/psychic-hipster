require 'spec_helper'

describe User, "#order" do
  it "should order the users alphabetically by last name" do
  	jim = User.create(first_name: "Jim", last_name: "Halpert")
  	dwight = User.create(first_name: "Dwight", last_name: "Shrute")
  	mike = User.create(first_name: "Michael", last_name: "Scott")
  	User.ordered.should eq([jim, mike, dwight])
  end
end

describe User, "#active_memberships" do
	it "should return an ordered list of active memberships" do
		jim = User.create(first_name: "Jim", last_name: "Halpert")
		gym = Membership.create(name: "Gym Member", active: true)
		yoga = Membership.create(name: "Yoga Member", active: true)
		church = Membership.create(name: "Church Member", active: false)
		jim.memberships << yoga
		jim.memberships << gym
		jim.memberships << church
		jim.active_memberships.should eq([gym, yoga])
	end
end

