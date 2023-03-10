class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
        @place = Place.find_by({ "id" => params["place_id"] })
        @post["place_id"] = @place["id"]
    end

    def create
        if @current_user
            @post = Post.new
            @post["title"] = params["post"]["title"]
            @post["description"] = params["post"]["description"]
            @post["posted_on"] = params["post"]["posted_on"]
            @post["place_id"] = params["post"]["place_id"]
            @post.uploaded_image.attach(params["post"]["uploaded_image"])
            @post["user_id"] = @current_user["id"]
            @post.save
        else
            flash["notice"] = "Login first."
        end
            redirect_to "/places/#{@post["place_id"]}"
    end
        
 
end
