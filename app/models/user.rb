class User < ApplicationRecord
  authenticates_with_sorcery!

  # 外部キー制約
  has_many :reviews, dependent: :destroy
  mount_uploader :profile_image, ProfileImageUploader
  has_many :favorite_foods
  has_many :favorites, through: :favorite_foods, source: :food

  # ユーザー名のバリデーション
  validates :name, presence: true, length: { maximum: 50 }

  # メールアドレスのバリデーション
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # パスワードのバリデーション
  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

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
