class AddReferenceUsersIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :user, foreign_key: { on_update: :cascade, on_delete: :cascade }
  end
end
