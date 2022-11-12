class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posted_farms = @user.farms
  end

  def home
  end

  def index
    @users = User.all
  end
end
