class AddFromToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :from, :string, comment: '出典'
  end
end
