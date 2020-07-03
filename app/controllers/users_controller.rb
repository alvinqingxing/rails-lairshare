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
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :title, :profile, :photo)
  end
end
