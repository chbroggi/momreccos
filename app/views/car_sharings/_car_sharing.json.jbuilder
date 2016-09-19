json.extract! car_sharing, :id, :name, :description, :nb_seats, :event_id, :player_id, :created_at, :updated_at
json.url car_sharing_url(car_sharing, format: :json)