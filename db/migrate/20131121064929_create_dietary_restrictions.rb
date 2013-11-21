class CreateDietaryRestrictions < ActiveRecord::Migration
  def change
    create_table :dietary_restrictions do |t|
      t.string :dietary_notes
    end
  end
end
