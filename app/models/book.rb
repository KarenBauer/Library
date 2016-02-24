class Book < ActiveRecord::Base
	has_many :comments
	has_many :book_authors
  has_many :requests
	has_many :authors, through: :book_authors
end
