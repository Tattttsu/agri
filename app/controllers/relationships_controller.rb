class RelationshipsController < ApplicationController
  before_action :authenticate_user!
  def create
    follow = current_user.active_relationships.build(followed_id: params[:user_id])
    follow.save
    redirect_to request.referer
  end

  def destroy
    unfollow = current_user.active_relationships.find_by(followed_id: params[:user_id])
    unfollow.destroy
    redirect_to request.referer
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end
