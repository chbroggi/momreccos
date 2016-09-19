json.extract! event, :id, :type, :name, :description, :when, :street, :zip_code, :city, :country, :team_id, :created_at, :updated_at
json.url event_url(event, format: :json)