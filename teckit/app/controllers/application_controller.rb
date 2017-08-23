class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def authentication_required
    if !logged_in?
      redirect_to signin_path
    end
  end

  def logged_in?
    session[:user_id]
  end

end
