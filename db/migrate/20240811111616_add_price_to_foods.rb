class AddPriceToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :price, :integer, null: false, comment: '希望小売価格'
  end
end
