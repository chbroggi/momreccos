json.extract! coach, :id, :first_name, :last_name, :phone, :email, :street, :zip_code, :city, :county, :team_id, :created_at, :updated_at
json.url coach_url(coach, format: :json)