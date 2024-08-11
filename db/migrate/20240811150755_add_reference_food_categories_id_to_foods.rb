class AddReferenceFoodCategoriesIdToFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :foods, :food_category, foreign_key: { on_update: :restrict, on_delete: :restrict }, comment: '食品カテゴリ'
  end
end
