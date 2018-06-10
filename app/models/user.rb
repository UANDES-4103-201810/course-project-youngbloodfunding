class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [ :facebook]

  def self.from_omniauth (auth)
    where(provider:auth.provider, uid:auth.uid).first_or_create do | user |
      user.provider=auth.provider
      user.uid=auth.uid
      user.email=auth.info.email
      user.name=auth.info.name
      user.password=Devise.friendly_token[0,20]
    end
  end

  has_many :bank_accounts
  has_many :promises
  has_many :backed_projects
  has_many :projects
  has_one :wishlist

  has_attached_file :image, styles: { large: "600x600>" ,medium: "300x300>", thumb: "150x150#" }, default_url: "/assets:style/anime_pic.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
