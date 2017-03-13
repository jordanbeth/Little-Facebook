class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end

  def cant_like(post)
     post.likes.any? { |like| like.liker_id == current_user.id }
  end

end
