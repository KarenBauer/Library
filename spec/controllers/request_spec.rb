require "rails_helper"

RSpec.describe RequestsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      book = Book.create!
      get :index, book_id: book.id
      expect(response).to have_http_status(200)
    end
  end
  describe "POST #create" do
    it "create a request and redirect to the book page" do
      pending 'add authentication to this'
      book = Book.create!
      request = Request.create(status: 0, from_date: '2012-02-02', to_date: '2012-04-04', user_id: 1, book_id: book.id)
      post :create, book_id: book.id, :request => {status: request.status, from_date: request.from_date, to_date: request.to_date}
      expect(response).to redirect_to books_path(book.id)
    end
  end

end
