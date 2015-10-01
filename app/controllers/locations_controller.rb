class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

# !!!!!!!!
# remember to source secrets.sh
#
  def show
    @location = get_location
    @corkboards = @location.corkboards

    @w_api = Wunderground.new
    # @temperature = w_api.conditions_for('France', "Paris")['current_observation']['temp_f']
    @temperature = @w_api.conditions_for(@location.country, @location.city)['current_observation']['temperature_string']

  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def edit
    @location = get_location
  end

  def destroy
    @location = get_location
    @location.destroy
    redirect_to locations_path
  end

private

def location_params
  params.require(:location).permit(:city, :country, :continent, :population, :language, :image, :description, :happiness, :economic_index)
end


def get_location
  Location.find(params[:id])
end

end
