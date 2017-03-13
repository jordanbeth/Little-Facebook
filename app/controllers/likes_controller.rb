class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.likes.create(liker_id: current_user.id) unless cant_like(@post)
    redirect_to user_path(@post.timeline_id)
  end

  def destroy
    @like = Like.find_by(liker_id: current_user.id)
    @post = Post.find(params[:post_id])
    @like.destroy if @like
    redirect_to user_path(@post.timeline_id)
  end

end
