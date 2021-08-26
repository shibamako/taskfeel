class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :topic, :content, :category, presence: true

  mount_uploaders :images, ImageUploader
end
