json.extract! category, :id, :name, :relevant, :score, :market_value, :notes, :created_at, :updated_at
json.url category_url(category, format: :json)
