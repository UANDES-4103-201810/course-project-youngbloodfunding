class Project < ApplicationRecord
  validates :name, length: { in: 1..50 }, presence: true
  validates :description, length: { maximum: 1000 }, presence: true
  validates :email, presence: true #AGREGAR VALIDACION DE CORREO
  validates :goal_amount, numericality: { only_integer: true }, presence: true
  validates :project_date, time: true, presence: true
  has_many :packages

end
