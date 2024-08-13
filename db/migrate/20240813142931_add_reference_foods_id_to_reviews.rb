class AddReferenceFoodsIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :food, foreign_key: { on_update: :cascade, on_delete: :cascade }, comment: 'レビュー'
  end
end
