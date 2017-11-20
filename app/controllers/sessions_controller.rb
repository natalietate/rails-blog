class SessionsController < ApplicationController
  def new
    redirect_to '/posts', notice: 'You are already logged in!' if logged_in?
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in
      redirect_to '/posts', notice: 'Successfully logged in!'
    else
      redirect_to '/login', notice: 'Failed to authenticate. Please try again.'
  end
end

  def logout
    session.clear
    redirect_to '/', notice: 'Successfully logged out. Bye!'
  end
end
