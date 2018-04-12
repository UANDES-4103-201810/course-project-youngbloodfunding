json.extract! user, :id, :name, :lats_name, :role, :email, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
