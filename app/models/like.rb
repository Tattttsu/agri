class Like < ApplicationRecord
  belongs_to :user
  belongs_to :farm

  validates :user_id, uniqueness: { scope: :farm_id}
end
