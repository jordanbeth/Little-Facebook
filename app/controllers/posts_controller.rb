class PostsController < ApplicationController

  def new
    @post = Post.new(user_id: params[:user_id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to users_show
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

  end

  private
  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end
