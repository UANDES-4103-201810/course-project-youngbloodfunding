class User < ApplicationRecord
  has_many :bank_accounts
  has_many :promises
  has_many :backed_projects, through: :backers
  has_many :created_projects, through: :creators
  has_many :projects, through: :updates

end
