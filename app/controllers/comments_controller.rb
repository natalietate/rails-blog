class CommentsController < ApplicationController
  before_action :authenticate, only: [:create, :destroy]

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new(comment_params)
  @comment.user_id = current_user.id
  @comment.save
  redirect_to @post
end


def destroy
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
  @comment.destroy
  redirect_to post_path(@post)
end


private
def comment_params
  params.require(:comment).permit(:body)
end

end
