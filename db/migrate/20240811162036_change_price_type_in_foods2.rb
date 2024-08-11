class ChangePriceTypeInFoods2 < ActiveRecord::Migration[7.0]
  def change
    change_column :foods, :price, :integer, using: 'price::integer'
  end
end
