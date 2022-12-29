class FarmsController < ApplicationController
  before_action :authenticate_user! ,only: ["new", "create", "destroy", "edit", "update"]
  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
    @comments = @farm.comments
    @comment = Comment.new
    gon.farm = @farm
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = current_user.farms.new(farm_params)
    @farm.user_id = current_user.id
    if @farm.save
      flash[:success] = "投稿しました"
      redirect_to @farm
    else
      render "new"
    end
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def update
    @farm = Farm.find(params[:id])
    if @farm.update(farm_params)
      redirect_to @farm
      flash[:success] = "更新しました"
    else
      render "farms/edit"
      flash.now[:alert] = "更新に失敗しました"
    end
  end

  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy
    flash[:success] = "削除しました"
    redirect_to farms_path
  end

  def home
    gon.farms = Farm.all
  end

  def search
    @farms = Farm.where("name LIKE ? OR address LIKE ? ", "%#{params[:word]}%", "%#{params[:word]}%" )
    @farms = @farms.uniq
  end

  def mapsearch
    @farms = Farm.where("name LIKE ? OR address LIKE ? ", "%#{params[:word]}%", "%#{params[:word]}%" )
    gon.farms = @farms.uniq
    gon.first_farm = @farms.where.not(latitude: nil).first
  end

  private
    def farm_params
      params.require(:farm).
      permit(:name, :address, :feature, :image, :latitude, :longitude, vege_tag_ids: [] )
    end
end
