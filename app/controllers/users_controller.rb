class UsersController < ApplicationController
  before_action :authenticate_user! ,only: ["followings", "followers"]

  def show
    @user = User.find(params[:id])
    @farms = @user.farms
  end

  def index
    if current_user.present?
      @users = User.where.not(id: current_user.id)
    else
      flash[:notice] = "ログインしてください"
      redirect_to request.referer
    end
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
