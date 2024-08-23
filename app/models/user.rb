class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :reviews, dependent: :destroy
  mount_uploader :profile_image, ProfileImageUploader

  # ユーザー情報制限
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true, presence: true

  # お気に入り食品機能（8/23追加）
  has_many :favorite_foods
  has_many :favorites, through: :favorite_foods, source: :food

  def favorite(food)
    favorites << food unless favorite?(food)
  end

  def unfavorite(food)
    favorites.delete(food)
  end

  def favorite?(food)
    favorites.include?(food)
  end
end
