class CreateFoodCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :food_categories, comment: '食品カテゴリ' do |t|
      t.string :name, comment: '食品カテゴリ名'

      t.timestamps
    end
  end
end
