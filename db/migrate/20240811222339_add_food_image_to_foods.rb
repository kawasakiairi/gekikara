class AddFoodImageToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :food_image, :string, comment: '食品画像'
  end
end
