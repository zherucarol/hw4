class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
      @current_user = User.find_by({ "id" => session["user_id"] })
      puts "------------------ code before every request ------------------"
    end
end
