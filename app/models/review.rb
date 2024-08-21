class Review < ApplicationRecord
  before_validation :convert_spice_level_to_integer
  # 外部キー制約（8/13追加）
  belongs_to :food
  belongs_to :user

  validates :spice_level, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  private
  # データ型変換（8/21追加）
  def convert_spice_level_to_integer
    self.spice_level = spice_level.to_i if spice_level.present?
  end

end
