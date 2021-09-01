class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :body, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
