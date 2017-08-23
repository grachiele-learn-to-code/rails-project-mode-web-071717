class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # byebug
      if session[:user_id]
        session.delete(:user_id)
        session[:user_id] = @user.id
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    if is_current_user? == false
      redirect_to ('/422')
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
    end

end
