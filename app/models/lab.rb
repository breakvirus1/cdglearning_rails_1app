class Lab < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, length: { minimum:3}
  validates :body, presence: true, length: { minimum: 3}
end
