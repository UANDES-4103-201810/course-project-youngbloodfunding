class Promise < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :contribution, numericality: { only_integer: true }, presence: true
  validates :donation, numericality: { only_integer: true }, presence: true
end
