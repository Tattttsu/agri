class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end

  def show
    @farms = Farm.find(params[:id])
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = current_user.farms.new(farm_params)
    @farm.user_id = current_user.id
    if @farm.save
      flash[:success] = "投稿しました"
      redirect_to root_url
    else
      render "new"
    end
  end

  def destroy
  end

  private

    def farm_params
      params.require(:farm).permit(:name)
    end
end
