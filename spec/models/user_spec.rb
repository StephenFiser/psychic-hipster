require 'spec_helper'

describe User, "#order" do
  it "should order the users alphabetically by last name" do
  	jim = User.create(first_name: "Jim", last_name: "Halpert")
  	dwight = User.create(first_name: "Dwight", last_name: "Shrute")
  	mike = User.create(first_name: "Michael", last_name: "Scott")
  	User.ordered.should eq([jim, mike, dwight])
  end
end
