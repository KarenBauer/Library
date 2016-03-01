module Users
  class RequestsController < ApplicationController
    before_action :authenticate_user!

    def index
      @requests = current_user.requests
    end
  end
end
