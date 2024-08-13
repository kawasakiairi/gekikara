class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews, comment: 'レビュー' do |t|
      t.string :title, null: false, comment: 'タイトル'
      t.string :rating, null: false, comment: '評価'
      t.integer :spice_level, comment: '辛さレベル'

      t.timestamps
    end
  end
end
