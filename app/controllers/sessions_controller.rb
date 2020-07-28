class SessionsController < ApplicationController
    def welcome
    end

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
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

