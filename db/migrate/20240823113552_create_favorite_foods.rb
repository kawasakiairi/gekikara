class CreateFavoriteFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_foods, comment:'お気に入り食品' do |t|
      t.references :user, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
      t.index [:user_id, :food_id], unique: true
    end
  end
end
