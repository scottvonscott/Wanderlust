class CommentsController < ApplicationController
    before_action :set_comment

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to comment_path(@comment)
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
        params.require(:comment).permit(:body)
    end

    def set_comment
        @comment = Comment.find_by(id: params[:id])
    end
    
end
