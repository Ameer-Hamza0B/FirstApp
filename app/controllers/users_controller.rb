class UsersController < ApplicationController
end

class UsersController < ApplicationController
    def index
      @users = User.all.order(:id)  # This fetches all users
    end
  end
  
