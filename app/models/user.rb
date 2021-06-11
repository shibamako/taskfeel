class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  validates :name, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments

  def active_for_authentication?
     super && self.is_deleted?
  end
end
