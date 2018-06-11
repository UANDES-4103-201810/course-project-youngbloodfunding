class CreateBankAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.string :account_type
      t.string :account_number
      t.string :bank_name
      t.references :user

      t.timestamps
    end
  end
end
