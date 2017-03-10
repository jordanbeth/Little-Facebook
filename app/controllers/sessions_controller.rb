class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:email])
      session[:user_id] = user.id
      redirect_to user_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
