class Slide < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  friendly_id :title, use: :slugged
  has_one_attached :photo
end
