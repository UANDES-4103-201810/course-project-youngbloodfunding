json.extract! bank_account, :id, :account_type, :account_number, :bank_name, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
