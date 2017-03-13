module ApplicationHelper

  def current_user
    @current_user ||=User.find_by_id(session[:user_id])
  end

  def require_user
    redirect_to root_path unless current_user
  end

  def authorized
    current_user.id == @post.creator_id
  end

  def can_like

  end

end
