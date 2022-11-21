class Farm < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true
end
