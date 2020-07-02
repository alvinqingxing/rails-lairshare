class UsersController < ApplicationController
  def index # all tasks
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @lairs = @user.lairs
  end

  def edit
    @user = current_user
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:email, :title, :profile, :photo)
  end
end
