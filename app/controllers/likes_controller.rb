class LikesController < ApplicationController
  def create
    @farm = Farm.find(params[:farm_id])
    @like = current_user.likes.create(farm_id: @farm.id)
    render :likes
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @like = current_user.likes.find_by(farm_id: @farm.id)
    @like.destroy
    render :likes
  end

end
