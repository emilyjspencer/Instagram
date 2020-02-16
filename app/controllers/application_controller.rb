class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  # By default, application controller methods are not available 
  # views, so they need to be defined as helper methods” so that the views can use them

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
     flash[:danger] = "You must be logged in to perform that action"
     redirect_to root_path
    end
   end

end
