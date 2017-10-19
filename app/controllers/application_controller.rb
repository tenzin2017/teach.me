class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

helper_method :current_user
private

  def current_user

    @loggedin_user ||= User.find(session[:user_id]) if session[:user_id]
    #puts @current_user.email
  end



  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please Log In"
      redirect_to root_path
    end
  end

end
