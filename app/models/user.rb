class User < ApplicationRecord
  has_many :farms
  has_many :likes, dependent: :destroy

  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy

  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy

  has_many :followings, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def already_liked?(farm)
    self.likes.exists?(farm_id: farm.id)
  end

  def following?(user)
    followings.include?(user)
  end

  def is_followed_by?(user)
    passive_relationships.find_by(follower_id: user.id).present?
  end
end
