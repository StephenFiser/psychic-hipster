require 'spec_helper'

describe Bicycle, "#turn" do
  it "should turn in the direction given" do
  	bike = Bicycle.create(speed: 20, direction: "North")
  	bike.turn "West"
  	bike.direction.should eq("West")
  end
end

describe Bicycle, "#accelerate" do
  it "should accelerate by 1" do
  	bike = Bicycle.create(speed: 19, direction: "North")
  	bike.accelerate 
  	bike.speed.should eq(20)
  end

  it "should not exceed its top speed" do
  	bike = Bicycle.create(speed: 20, direction: "North")
  	bike.accelerate 
  	bike.speed.should_not eq(21)
  end

end

describe Bicycle, "#slow_down" do
  it "should slow down by 1" do
  	bike = Bicycle.create(speed: 19, direction: "North")
  	bike.slow_down 
  	bike.speed.should eq(18)
  end
end
