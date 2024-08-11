class AddBodyToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :body, :string, null: false, comment: '説明'
  end
end
