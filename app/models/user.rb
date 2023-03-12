class User < ApplicationRecord
  validates :name, length: { minimum: 1, maximum: 15 }

  has_many :farms
  has_many :comments
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

  mount_uploader :icon, IconUploader

  def already_liked?(farm)
    self.likes.exists?(farm_id: farm.id)
  end

  def following?(user)
    followings.include?(user)
  end

  def is_followed_by?(user)
    passive_relationships.find_by(follower_id: user.id).present?
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  def self.guest
    find_or_create_by(name: "テストユーザー", email: "example@gmail.com", role: 0) do |user|
      user.password = "123456"
    end
  end

  def self.guest_farmer
    find_or_create_by(name: "農家用テスト", email: "example2@gmail.com", role: 1) do |user|
      user.password = "123456"
    end
  end

end
