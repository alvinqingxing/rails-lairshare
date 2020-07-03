class UsersController < ApplicationController
  def index #all tasks 
    @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @lairs = @user.lairs
  end

  def except(value)
    self - [value]
  end
end
