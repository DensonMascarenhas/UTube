class VideosController < ApplicationController

    def index 
        @videos=Video.all
    end


    def new
        @videos=Video.new
    end

    def edit

    end

    def create 
        # @videos=Video.new(get_params)
    end

    def show
    end



    private

    def get_params
        params.require(:videos).permit(:title, :description, :link)
    end


end
