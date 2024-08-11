class AddSpiceLevelToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :spice_level, :integer, null: false, comment: '辛さレベル'
  end
end
