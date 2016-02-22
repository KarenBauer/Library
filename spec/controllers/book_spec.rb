require "rails_helper"

RSpec.describe BooksController, :type => :controller do
  describe "GET #index" do
    before do
        @book1, @book2 = Book.create!, Book.create! 
    end
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end     
    it "loads all of the books into @books" do
      
      get :index
      expect(assigns(:books)).to match_array([@book1, @book2])
    end
    it "has author" do
        get :index
        expect((assigns(:books).first).authors).to_not be_nil
        
    end
  end
end