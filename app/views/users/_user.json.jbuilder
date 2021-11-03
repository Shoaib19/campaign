json.extract! user, :id, :type, :username, :status, :profession, :service, :created_at, :updated_at
json.url user_url(user, format: :json)
