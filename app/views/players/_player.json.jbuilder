json.extract! player, :id, :first_name, :passport_nb, :parent_id, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)