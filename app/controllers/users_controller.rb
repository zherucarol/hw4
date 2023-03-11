class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find_by({ "id" => params["id"] })
    end
    
    def create
        @user = User.new
        @user["user_name"] = params["user"]["user_name"]
        @user["email"] = params["user"]["email"]
        @user["password"] = BCrypt::Password.create(params["user"]["password"])
        @user.save
        redirect_to "/users/#{@user["id"]}"
    end
end
