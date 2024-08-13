class Review < ApplicationRecord
  # 外部キー制約（8/13追加）
  belongs_to :food
  belongs_to :user

end
