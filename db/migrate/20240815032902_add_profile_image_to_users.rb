class AddProfileImageToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile_image, :string, comment: 'プロフィール画像'
  end
end
