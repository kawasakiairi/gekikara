class AddCountryToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :country, :string, null: false, comment: '国'
  end
end
