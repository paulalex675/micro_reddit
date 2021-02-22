class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :first_name, presence: true
  has_many :posts, dependent: :destroy
end