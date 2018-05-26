class Project < ApplicationRecord
  has_many :promises
  belongs_to :user
  has_one :category
  validates :name, length: { in: 1..50 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 1000 }, presence: true
  validates :email, presence: true
  validates :goal_amount, numericality: { only_integer: true }, presence: true
  validates :project_date, presence: true #verificar formato

  has_attached_file :image, styles: { large: "600x600>" ,medium: "300x300>", thumb: "150x150#" }, default_url: "/assets:style/tupac.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.search(search)
    where("category_id LIKE ?","%#{search}")
  end



end
