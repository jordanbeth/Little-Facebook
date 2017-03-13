class PostsController < ApplicationController


  def create
    @user = User.find_by_id(params[:post][:timeline_id])
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(@user)
    else
      render 'users/show'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
    @user = @post.timeline
    @posts = @user.timeline_posts
    render 'users/show'
  end

  def update
    @post = Post.find(params[:id])
    @user = @post.timeline
    @posts = @user.timeline_posts
    if @post.update(post_params)
      redirect_to user_path(@user)
    else
      render 'users/show'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to user_path(@post.timeline_id)
  end

  private
  def post_params
    params.require(:post).permit(:content, :timeline_id, :creator_id)
  end
end
