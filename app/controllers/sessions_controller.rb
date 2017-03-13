class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = ["Invalid email/password"]
      render 'home/index'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
