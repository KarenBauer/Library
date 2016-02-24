require 'rails_helper'

RSpec.describe Request, type: :model do

  describe "is_in_use?" do
    it "Can't request a book if it is lent" do
      Request.create(status: 0, from_date: '2012-02-02', to_date: '2012-04-04', user_id: 1, book_id: 1)
      Request.create(status: 0, from_date: '2012-03-03', to_date: '2012-04-04', user_id: 1, book_id: 1).should_not be_valid
      Request.create(status: 0, from_date: '2012-01-03', to_date: '2012-03-04', user_id: 1, book_id: 1).should_not be_valid
    end
  end
end
