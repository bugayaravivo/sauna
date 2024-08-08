class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    @building.user_id = current_user.id
    @building.save
    redirect_to buildings_path
  end

  def index
    @building = Building.new
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
  end
  
  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to buildings_path
  end 
  
  def edit
  end 
  
  def update
  end 

  private

  def building_params
    params.require(:building).permit(:shop_name, :image, :place, :body)
  end
end
