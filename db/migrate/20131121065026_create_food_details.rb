class CreateFoodDetails < ActiveRecord::Migration
  def change
    create_table :food_details do |t|
      t.integer :event_id
      t.integer :dietary_restrictions_id
      t.string :quantity
    end
  end
end
