class BankAccount < ApplicationRecord
  belongs_to :user
  validates :account_number, presence: true
  validates :account_type, presence: true
  validates :bank_name, presence: true

end
