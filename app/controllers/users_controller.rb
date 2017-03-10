class UsersController < ApplicationController

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      redirect_to user_path(@new_user.id)
    else
      render 'new'
    end
  end

  def show
    @current_user = User.find_by(id: params[:id])
    @posts = Post.find_by(user_id: @current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
