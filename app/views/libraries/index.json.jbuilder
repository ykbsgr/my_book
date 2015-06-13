json.array!(@libraries) do |library|
  json.extract! library, :id, :book_name, :write_name, :price, :publisher, :releasedate, :isbn_code
  json.url library_url(library, format: :json)
end
