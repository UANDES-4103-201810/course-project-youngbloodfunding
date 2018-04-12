class Backer < ApplicationRecord
  has_many :backed_projects
  belongs_to :user
  validates :user, presence: true
end
