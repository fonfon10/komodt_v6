json.extract! user, :id, :firstname, :lastname, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
