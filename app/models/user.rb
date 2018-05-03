class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bank_accounts
  has_many :promises
  has_many :backed_projects, through: :backers
  has_many :created_projects, through: :creators
  has_many :projects, through: :updates
  has_one :wishlist
  validates :role, numericality: { only_integer: true }, presence: true

end
