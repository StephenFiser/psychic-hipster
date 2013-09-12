class AddSpeedAndDirectionToCars < ActiveRecord::Migration
  def change
  	add_column :cars, :speed, :integer
  	add_column :cars, :direction, :string
  end
end
