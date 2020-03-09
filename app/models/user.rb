class User < ApplicationRecord
  has_many :comments
  has_many :chirps
  validates :name, presence: true,
            length: { minimum: 5 }
end
