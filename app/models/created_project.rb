class CreatedProject < ApplicationRecord
  belongs_to :user, through: :creators
  has_many :projects
  validates :user, presence: true
end
