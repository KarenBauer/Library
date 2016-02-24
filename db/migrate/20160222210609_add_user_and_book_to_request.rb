class AddUserAndBookToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :user_id, :integer
    add_column :requests, :book_id, :integer
  end
end
