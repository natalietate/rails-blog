class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Log in the use
  def sign_in
    session[:user_id] = @user.id
  end

  # Returns the current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Check if user is logged in
  def logged_in?
    !!current_user
  end

  helper_method :sign_in, :current_user, :logged_in?
end
