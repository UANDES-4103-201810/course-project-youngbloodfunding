class Package < ApplicationRecord
  belongs_to :project
  validates :project, presence: true
  validates :bundle_name, presence: true
  validates :bundle_description, length: { maximum: 1000}
  validates :bundle_price, numericality: { only_integer: true}, presence: true
end
