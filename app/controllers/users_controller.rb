class UsersController < ApplicationController

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to user_path(@new_user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @friends = @user.friends
    @posts = @user.timeline_posts
    @post = Post.new
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
