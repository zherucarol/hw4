class PlacesController < ApplicationController

    def index
      @places = Place.all
    end
    
    def show
      @place = Place.find_by({"id" => params["id"]})
      @posts = Post.where({"place_id" => @place["id"]})
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

    def edit
      @place = Place.find_by({ "id" => params["id"] })
    end
  
    def update
      @place = Place.find_by({ "id" => params["id"] })
      @place["name"] = params["place"]["name"]
      @place.save
      redirect_to "/places"
    end
  
    def destroy
      @place = Place.find_by({ "id" => params["id"] })
      @place.destroy
      redirect_to "/places"
    end

end
