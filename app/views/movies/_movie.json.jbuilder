json.extract! movie, :id, :name, :url, :description, :user_id, :category_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
