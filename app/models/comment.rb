class Comment < ApplicationRecord
  belongs_to :lab
  validates :body, presence: true
end
