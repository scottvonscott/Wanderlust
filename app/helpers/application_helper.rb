module ApplicationHelper
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def user_access
        unless logged_in?
            redirect_to root_path
        end
    end

end
