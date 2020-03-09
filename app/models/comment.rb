class Comment < ApplicationRecord
  belongs_to :chirp
  belongs_to :user
  validates :text, presence: true,
            length: { minimum: 5 }
end
