module ApplicationHelper

  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end

  def require_user
    redirect_to root_path unless current_user
  end

  def authorized_to_delete
    current_user.id == @post.creator_id
  end

  # def authorized_to_post

  #   current_user.id
  # end

end
