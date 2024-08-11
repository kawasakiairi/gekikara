class ChangePriceTypeInFoods < ActiveRecord::Migration[7.0]
  # priceについて、オープン価格の場合を考慮してstringに変更
  def up
    change_column :foods, :price, :string, null: false, comment: '希望小売価格'
  end

  def down
    change_column :foods, :price, :integer
  end
end
