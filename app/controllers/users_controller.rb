class UsersController < ApplicationController
    
    def new
    end

    def create
        byebug
        if  @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end
    
private

    def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
   

    
end
