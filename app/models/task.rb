class Task < ApplicationRecord
  validates :appointed, :priority, :username, :title, :category, :status, presence: true
end
