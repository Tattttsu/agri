class UsersController < ApplicationController
  before_action :authenticate_user! ,only: ["followings", "followers"]

  def show
    @user = User.find(params[:id])
    @farms = @user.farms
    @current_entry = Entry.where(user_id: current_user.id)
    @another_entry = Entry.where(user_id: @user.id)
    return if @user.id == current_user.id

    @current_entry.each do |current|
      @another_entry.each do |another|
        if current.room_id == another.room_id
          @is_room = true
          @room_id = current.room_id
        end
      end
    end
    return if @is_room

    @room = Room.new
    @entry = Entry.new
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
