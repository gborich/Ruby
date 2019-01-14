module ApplicationHelper
  def login_user(user)
    session[:user] = user
  end

  def logged_in?
    !session[:user].nil?
  end

  def current_user
    session[:user]
  end
end
