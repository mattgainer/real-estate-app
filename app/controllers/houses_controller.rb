class HousesController < ApplicationController
  def index
    @houses = House.all
  end
  def new
  end
  def edit
  end
  def show
  end
  def create
    @coordinates = Geocoder.coordinates(address: params[:address])
    if params[:availability][:truefalse] == "true"
      @availability = true
    else
      @availability = false
    end
    House.create(description: params[:description], year_built: params[:year_built].to_i, square_feet: params[:square_feet].to_i, bedrooms: params[:bedrooms].to_i, bathrooms: params[:bathrooms].to_i, availability: @availability, latitude: @coordinates[0], longitude: @coordinates[1])
    redirect_to "/houses"
  end
  def update
  end
  def delete
  end
end
