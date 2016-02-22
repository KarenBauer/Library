class AuthorsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@authors=Author.all
  
  end
end