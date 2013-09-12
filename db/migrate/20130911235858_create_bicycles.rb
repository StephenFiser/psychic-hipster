class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.integer :speed
      t.string :direction

      t.timestamps
    end
  end
end
