class AddReferenceFoodCountriesIdToFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :foods, :food_country, foreign_key: { on_update: :restrict, on_delete: :restrict }, comment: '国名カテゴリ'
  end
end
