class RemoveCountryFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :country, :string
  end
end
