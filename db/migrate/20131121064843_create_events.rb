class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :cuisine
      t.string :location
      t.datetime :event_date
    end
  end
end
