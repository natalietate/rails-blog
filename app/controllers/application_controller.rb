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

  # Redirects if not logged in
  def authenticate
    unless logged_in?
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to '/posts' unless @user == current_user
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  helper_method :sign_in, :current_user, :logged_in?, :authenticate, :correct_user, :log_out
end
