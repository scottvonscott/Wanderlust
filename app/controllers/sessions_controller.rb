class SessionsController < ApplicationController
    def welcome
    end

    def new
    end

    def create
        uuser = User.find_by_email(params[:email])
        if user && u.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            # flash[:message] = "Invalid credentials. Please try again."
            redirect_to '/login'
            redirect_to '/login', alert: "Invalid credentials. Please try again."
        end
    end
end