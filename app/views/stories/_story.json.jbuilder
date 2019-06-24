json.extract! story, :id, :account_id, :category_id, :title, :active, :publish_on, :likes, :dislikes, :content, :created_at, :updated_at
json.url story_url(story, format: :json)
