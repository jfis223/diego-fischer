class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :year, presence: true
  has_one_attached :photo
end
