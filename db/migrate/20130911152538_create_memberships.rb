class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
