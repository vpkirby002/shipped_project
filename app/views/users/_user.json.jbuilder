json.extract! user, :id, :fname, :lname, :email, :password, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
