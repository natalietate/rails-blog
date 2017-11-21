class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    get_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/posts'
    else
      render 'new'
    end
  end

  def edit
    get_user
  end

  def update
    get_user

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
