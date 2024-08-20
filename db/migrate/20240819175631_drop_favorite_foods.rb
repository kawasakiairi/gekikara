class DropFavoriteFoods < ActiveRecord::Migration[7.0]
  def up
    drop_table :favorite_foods
  end

  def down
    create_table :favorite_foods do |t|
      t.bigint :user_id, null: false
      t.bigint :food_id, null: false
      t.timestamps
    end
    add_index :favorite_foods, :food_id
    add_index :favorite_foods, [:user_id, :food_id], unique: true
    add_index :favorite_foods, :user_id
  end
end
