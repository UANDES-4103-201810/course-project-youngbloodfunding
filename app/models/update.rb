class Update < ApplicationRecord
  belongs_to :user
  has_many :projects
  validates :user, presence: true
  validates :name, length: { in: 2..30 },presence: true
  validates :description, length: { maximum: 1000 },presence: true
end
