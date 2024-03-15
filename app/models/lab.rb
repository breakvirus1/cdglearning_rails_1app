class Lab < ApplicationRecord
  has_many :comments
  validates :title, :body, presence: true
end
