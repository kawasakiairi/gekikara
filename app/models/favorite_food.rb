class FavoriteFood < ApplicationRecord
  belongs_to :user
  belongs_to :food
  
  validates :user_id, uniqueness: { scope: :food_id }
end
