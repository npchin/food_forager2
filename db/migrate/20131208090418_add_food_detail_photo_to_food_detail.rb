class AddFoodDetailPhotoToFoodDetail < ActiveRecord::Migration
  def change
    add_column :food_details, :food_detail_photo, :string
  end
end
