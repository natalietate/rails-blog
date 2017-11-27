class UsersController < ApplicationController
  before_action :authenticate, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def show
    get_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in
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

  def destroy
    get_user
    @user.destroy
    redirect_to '/', notice: 'Your account has been successfully deleted. We\'ll miss you!'
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
