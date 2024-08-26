class ChangePriceToBeDecimalInFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :price, :decimal, precision: 10, scale: 2, comment: '希望小売価格'
  end
end
