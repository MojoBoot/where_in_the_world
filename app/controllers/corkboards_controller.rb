class CorkboardsController < ApplicationController

def index
  @corkboards = Corkboard.all
end

def show
  @location = Location.find(params[:location_id])
  @corkboard = @location.corkboards.find(params[:id])
end

def new
  @corkboard = Corkboard.new
end

def create
  @location = Location.find(params[:location_id])
  @corkboard = @location.corkboards.create(corkboard_params)
  redirect_to location_path(@location)
end



private

def corkboard_params
  params.require(:corkboard).permit(:title, :comment)
end


end
