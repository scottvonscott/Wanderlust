class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :edit, :destroy]
    before_action :set_attraction, only: [:new, :create, :edit, :update, :destroy]
    before_action :redirect_if_not_owner, only: [:edit, :update, :destroy]

    def index
        @comments = Comment.all
    end

    def new
        if  params[:attraction_id]
            @comment = @attraction.comments.build
        end
    end

    def create
        @comment = current_user.comments.build(comment_params)
        if  @comment.save
            redirect_to attraction_comment_path(@attraction, @comment)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        @comment.destroy
        redirect_to comments_path
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

    def redirect_if_not_owner
        if @trip.user != current_user
            redirect_to user_path(current_user), alert: "You can't edit this!"
        end
    end
    
end
