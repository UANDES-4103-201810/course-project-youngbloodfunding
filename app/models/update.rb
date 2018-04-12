class Update < ApplicationRecord
  belongs_to :user
  has_many :projects
  validates :user, presence: true
end
