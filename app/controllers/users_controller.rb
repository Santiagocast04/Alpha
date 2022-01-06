class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "welcome to the alpha blog, you have successfully signup"
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :emails, :password)
  end

end