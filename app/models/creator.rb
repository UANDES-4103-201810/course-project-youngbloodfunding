class Creator < ApplicationRecord
  has_many :created_projects
  belongs_to :user
end
