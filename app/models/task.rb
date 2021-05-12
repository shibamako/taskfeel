class Task < ApplicationRecord
  validates :appointed, :priority, :username, :title, :category, :status, presence: true

  def start_time
    self.appointed
  end
end
