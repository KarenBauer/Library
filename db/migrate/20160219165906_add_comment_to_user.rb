class AddCommentToUser < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :integer
  	remove_column :comments, :nameUser, :string
  end
end
