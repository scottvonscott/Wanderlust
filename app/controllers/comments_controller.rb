class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update]
    before_action :set_attraction, only: [:create]

    def index
        @comments = Comment.all
    end

    def new
        if params[:attraction_id] && @attraction = Attraction.find_by(id: params[:attraction_id])
            @comment = @attraction.comments.build
        end
    end

    def create
        @comment = current_user.comments.build(comment_params)
        @comment.attraction = @attraction        
        if @comment.save
            redirect_to attraction_comment_path(@comment)
        else
            render :new
        end
    end

    def show
    end

    def destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :attraction_id)
    end

    def set_comment
        @comment = Comment.find_by(id: params[:id])
    end

    def set_attraction
        @attraction = Attraction.find_by(id: params[:attraction_id])
    end
    
end
