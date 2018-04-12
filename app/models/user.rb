class User < ApplicationRecord
  has_many :bank_accounts
  has_many :promises
  has_many :backed_projects, through: :backers
  has_many :created_projects, through: :creators
  has_many :projects, through: :updates
  has_one :wishlist
  validates :name, length: { in: 2..30 }, presence: true
  validates :last_name, length: { in: 2..30 }, presence: true
  validates :password, length: { minimum: 8 }, presence: true
  validates :email, presence: true
  validates :role, numericality: { only_integer: true }, presence: true

end
