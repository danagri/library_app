json.extract! borrow, :id, :book_id, :name, :who_borrow, :date_borrow, :date_return, :created_at, :updated_at
json.url borrow_url(borrow, format: :json)
