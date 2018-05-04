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
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
=begin
  validates :role, numericality: { only_integer: true }, presence: true
=end

end
