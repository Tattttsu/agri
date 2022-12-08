class Farm < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :comments, dependent: :destroy
  has_many :tag_relations, dependent: :destroy
  has_many :vege_tags, through: :tag_relations, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true

  mount_uploader :image, ImageUploader
end
