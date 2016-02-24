class RequestsController < ApplicationController
  before_action :load_book_requests, only: [:index, :create, :new]

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    request = request_params
    request[:status] = 0
    request[:user_id] = current_user.id
    @request = @book_requests.build(request)
    if @request.valid? && ! @request.is_in_use?
      if request[:from_date] < request[:to_date]
        @request.save
        redirect_to books_path(params[:book_id])
      else
        @errors = "from date must be before to date"
        render 'requests/new'
      end
    else
      @errors = @request.errors.full_messages.join(', ')
      render 'requests/new'
    end
  end

  def request_params
    params.require(:request).permit(:stauts, :from_date, :to_date)
  end

  def load_book_requests
    @current_book = Book.find(params[:book_id])
    @book_requests = @current_book.requests
  end

end
