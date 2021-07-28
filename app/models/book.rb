class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  validates :title, presence: true
  validates :year, presence: true
  has_one_attached :photo
  has_one_attached :cover
end
