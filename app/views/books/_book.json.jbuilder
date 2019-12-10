json.extract! book, :id, :name, :author_id, :genre_id, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
