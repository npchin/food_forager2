class CreateDietaryRestrictions < ActiveRecord::Migration
  def change
    create_table :dietary_restrictions do |t|
      t.string :dietary_notes
      t.timestamps
    end
  end
end
