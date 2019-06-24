json.extract! review, :id, :story_id, :rate, :autor, :donation, :market_value, :content, :created_at, :updated_at
json.url review_url(review, format: :json)
