class BackedProject < ApplicationRecord
  belongs_to :user, through: :backers
  has_many :projects
end
