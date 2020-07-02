class UsersController < ApplicationController
  #all tasks
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @lairs = @user.lairs
  end
end
