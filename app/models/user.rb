class User < ApplicationRecord
  has_many :tasks

  validates :username, presence: true, uniqueness: true
end