class SessionsController < ApplicationController
    def welcome
    end

    def new
        @user = User.new
    end

    def create
        uuser = User.find_by_email(params[:email])
        if user && u.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to '/login', alert: "Invalid login credentials. Please try again."
        end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end
    
end

