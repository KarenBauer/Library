json.books @books do |book|
  json.(book, :id, :title, :year, :isbn)
  json.authors book.authors do |author|
    json.(author, :name)
  end
end
