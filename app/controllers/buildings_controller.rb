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
  end

  def show
  end
  
  private
  
  def building_params
    params.require(:building).permit(:shop_name, :place, :body)
  end
end
