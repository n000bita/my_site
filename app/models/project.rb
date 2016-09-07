class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, length: { minimum: 3, maximum: 120 }
  validates :description, presence: true, length: { minimum: 3 }
end
