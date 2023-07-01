class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.nearest_stations.build}
  end

  def create
    @property = Property.new(property_params)
    if params[:back]
      render :new
    else
      if @property.save
        redirect_to properties_path(@property)
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
    @property.nearest_stations.build
  end

  def update
    if @property.update(property_params)
      # binding.pry
      redirect_to properties_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def property_params
    params.require(:property).permit(:name, :rete, :address, :age, :note, nearest_stations_attributes: [:id, :route, :station, :time, :_destroy])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
