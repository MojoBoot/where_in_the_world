class LocationsController < ApplicationController
  before_filter :authenticate_user!, except: [ :index, :show]

  def index

    # if params[:search]
    #   @location = Location.find_by_city(params[:search])
    # else
      @locations = Location.all

  # end
end

# !!!!!!!!
# remember to source secrets.sh
#
  def show
    @location = get_location
    @corkboards = @location.corkboards

    w_api = Wunderground.new("95dee549dd84ecec")
    @temperature = w_api.conditions_for(@location.nation, @location.city)['current_observation']['temperature_string']


    url = "http://www.numbeo.com/api/city_prices?api_key=95kfsvuejq8fyd&query=#{@location.city}&currency=USD"
    response = RestClient.get(url)


    numbeo_response = JSON.parse(response)

    numbeo_response["prices"].each do |price|
       if price["item_id"] == 26
         @rent_get = price["average_price"].round
       elsif
         price["item_id"] == 14
         @wine_get = price["average_price"].round(2)
       elsif
         price["item_id"] == 1
         @meal_get = price["average_price"].round(2)
       elsif
         price["item_id"] == 105
         @disp_income_get = price["average_price"].round
       elsif
         price["item_id"] == 30
         @utilities_get = price["average_price"].round
       elsif
         price["item_id"] == 20
         @trans_get = price["average_price"].round
       elsif
         price["item_id"] == 114
         @cappuccino_get = price["average_price"].round(2)
       elsif
         price["item_id"] == 111
         @oranges_get = price["average_price"].round(2)
       elsif
         price["item_id"] == 9
         @bread_get = price["average_price"].round(2)
       else
       end
    end



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

  def update
    @location = Location.find(params[:id])

    if @location.update(location_params)
      redirect_to @location
    else
      render 'edit'
    end
  end


  def destroy
    @location = get_location
    @location.destroy
    redirect_to locations_path
  end

private

def location_params
  params.require(:location).permit(:city, :nation, :continent, :population, :language, :image, :description, :happiness, :economic_index, :visa_info, :job_info, :rental_info, :rent, :disp_money, :utilities, :trans, :meal_cost, :wine_cost, :orange_cost, :bread_cost, :quality_life)
end


def get_location
  Location.find(params[:id])
end

end
