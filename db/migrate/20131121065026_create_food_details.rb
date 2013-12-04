class CreateFoodDetails < ActiveRecord::Migration
  def change
    create_table :food_details do |t|
      t.integer :event_id
      t.integer :dietary_restriction_id
      t.string :quantity
      t.timestamps
    end
  end
end
