class SessionsController < ApplicationController

  # Redirects to post index if user is already logged in
  def new
    redirect_to '/posts', notice: 'Hey, you\'re already logged in!' if logged_in?
  end

  # Log in and authenticate user
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in
      redirect_to '/posts', notice: 'Great, you successfully logged in!'
    else
      redirect_to '/login', notice: 'Uh oh, failed to authenticate. Please try again.'
    end
  end

  # Ends session (log out)
  def destroy
    log_out
    redirect_to '/', notice: 'You have been successfully logged out. Bye!'
  end
end
