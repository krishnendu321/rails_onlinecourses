class ApplicationController < ActionController::Base
    protect_from_forgery  with: :exception
    before_action :require_user
    helper_method :current_user, :logged_in?

    def current_user
        @current_user  ||=Student.find(session[:student_id]) if session[:student_id]
    end

    def logged_in?
        !!current_user

    end
end
def require_user
    if !logged_in?
        flash[:notice]= "You have to login first"
        redirect_to login_path
    end
end
