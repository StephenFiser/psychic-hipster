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
