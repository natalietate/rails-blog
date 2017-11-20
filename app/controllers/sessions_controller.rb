class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:password])
      # session[:user_id] = @user.id
      # redirect_to '/posts', notice: 'Successfully logged in!'
    else
      redirect_to '/login', notice: 'Failed to authenticate. Please try again.'
  end
end

  def logout

  end
end
