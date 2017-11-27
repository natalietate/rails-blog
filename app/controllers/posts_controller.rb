class PostsController < ApplicationController
  before_action :authenticate, only: [:index, :create, :destroy]

  def index
    @posts = Post.all
  end

  def show
    get_post
  end

  def new
    @post = Post.new
  end

  def edit
    get_post
  end

  # create new post where user ID is equal to the current user's user ID
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  # edit post
  def update
    get_post

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    get_post
    @post.destroy
    redirect_to posts_path
  end

  private
  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end

end
