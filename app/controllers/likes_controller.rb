class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(farm_id: params[:farm_id])
    redirect_to request.referer
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @like = current_user.likes.find_by(farm_id: @farm.id)
    @like.destroy
    redirect_to request.referer
  end

end
