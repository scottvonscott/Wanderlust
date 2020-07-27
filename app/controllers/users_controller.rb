class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        if @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to new_user_path
        end
    end

    def show
    end
    
private

    def user_params
        params.require(:user).permit()
    end
   

    
end
