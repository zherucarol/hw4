class PlacesController < ApplicationController

    def index
      @places = Place.all
    end
    
    def show
      if @current_user
        @place = Place.find_by({ "id" => params["id"] })
        @posts_for_current_user = Post.where({"user_id" => @current_user["id"]})
        @posts = @posts_for_current_user.where({ "place_id" => @place["id"] })
      end
    end

    def new
      @place = Place.new
    end
    
    def create
      @place = Place.new
      @place["name"] = params["place"]["name"]
      @place.save
      redirect_to "/places"
    end

end
