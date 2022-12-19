class VideosController < ApplicationController
    before_action :authenticate_user!, except:[:index, :show]

    def index 
        @videos=Video.search_by_tag(params[:search])
        @tags=Tag.order('Random()').limit(10)
    end

    # method creates new object
    def new
        @video=current_user.videos.build
    end

    def edit

    end

    # method saves the record inside model.
    def create 
        @video=current_user.videos.build(get_params)
        if @video.save
            flash[:notice]="Saved Succesfully."
            redirect_to root_path
        else
            render 'new', status: :unprocessable_entity

        end

    end

    # shows one video in detail
    def show
        @video=Video.find(params[:id])
    end



    private

    def get_params
        params.require(:video).permit(:title, :description, :link, :tag_list)
    end

        


end
