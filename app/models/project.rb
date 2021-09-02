class Project < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :description, presence: true
  has_one_attached :photo
  has_rich_text :description
end
