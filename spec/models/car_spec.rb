require 'spec_helper'

describe Car do
  it "should return a users blue cars" do
  	jim = User.create(first_name: "Jim", last_name: "Halpert")
  	corvette = Car.create(color: "Blue")
  	ferarri = Car.create(color: "Yellow")
  	accord = Car.create(color: "Blue")
  	jim.cars << corvette
  	jim.cars << ferarri
  	jim.cars << accord
  	jim.blue_cars.should eq([corvette, accord])
  end
end

describe Car, "#turn" do
  it "should turn in the direction given" do
    bike = Car.create(speed: 50, direction: "North")
    bike.turn "West"
    bike.direction.should eq("West")
  end
end

describe Car, "#accelerate" do
  it "should accelerate by 10" do
    bike = Car.create(speed: 50, direction: "North")
    bike.accelerate 
    bike.speed.should eq(60)
  end

  it "should not exceed its top speed" do
    bike = Car.create(speed: 100, direction: "North")
    bike.accelerate 
    bike.speed.should_not eq(110)
  end

end

describe Car, "#slow_down" do
  it "should slow down by 1" do
    bike = Car.create(speed: 60, direction: "North")
    bike.slow_down 
    bike.speed.should eq(50)
  end
end
