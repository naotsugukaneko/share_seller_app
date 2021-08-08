class Post < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  validates :image, presence: true
end
