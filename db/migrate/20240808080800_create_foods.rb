class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods, comment: '食品表示' do |t|
      t.string :name, null: false, comment: '食品名'

      t.timestamps
    end
  end
end
