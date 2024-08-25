class Review < ApplicationRecord
  before_validation :convert_spice_level_to_integer

  # 外部キー制約（8/13追加）
  belongs_to :food
  belongs_to :user

  # タイトルのバリデーション
  validates :title, presence: true, length: { maximum: 20 }

  # 感想・コメントのバリデーション
  validates :rating, presence: true, length: { maximum: 200 }

  # 辛さレベルのバリデーション
  validates :spice_level, presence: true

  # レビュー回数制限
  validates :user_id, uniqueness: { scope: :food_id }

  private
  # データ型変換（8/21追加）
  def convert_spice_level_to_integer
    self.spice_level = spice_level.to_i if spice_level.present?
  end

end
