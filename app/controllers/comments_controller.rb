class CommentsController < ApplicationController
   before_action :authenticate_user!, only: :create

  def index
  	@comments=Comment.all
  end

  def new
  	@comment = Comment.new
  end

  def create
  	@book = Book.find(params[:book_id])
    comment = coment_params
    comment[:user_id] = current_user.id
  	@comment = @book.comments.create(comment)
    if @comment.valid?
      redirect_to book_path(params[:book_id])
    else
      @errors = @comment.errors.full_messages.join(',')
      render 'comments/_index'
    end
  end

  def coment_params
    params.require(:comment).permit(:text)
  end

end