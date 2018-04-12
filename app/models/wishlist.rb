class Wishlist < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :project_name, presence: true
end
