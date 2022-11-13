class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posted_farms = @user.farms
  end

  def home
  end

  def index
    @users = User.where.not(id: current_user.id)
  end

  def followings
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end
end
