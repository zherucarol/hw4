class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def show
        @post = Post.where({"place_id" => @place["id"]})
    end

    def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"
    end

    def edit
        @post = Post.where({"place_id" => @place["id"]})
    end
    
    def update
        @post = Post.where({"place_id" => @place["id"]})
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"
    end
    
    def destroy
        @post = Post.where({"place_id" => @place["id"]})
        @post.destroy
        redirect_to "/posts"
    end
  
end
