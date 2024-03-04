class Lab < ActiveRecord::Base

  validates :title, presence: true, length: { minimum:3}
  validates :body, presence: true, length: { minimum: 3}
end
