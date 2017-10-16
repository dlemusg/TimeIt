json.extract! offer, :id, :nombre, :descripcion, :imagen, :user_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)
