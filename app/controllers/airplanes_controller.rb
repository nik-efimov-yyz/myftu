class AirplanesController < ApplicationController

  def index
    @airplanes = Airplane.all
  end

  def show
    @airplane = Airplane.find params[:id]
  end

  def new
    @airplane = Airplane.new(params[:airplane])
  end

  def create
    @airplane = Airplane.new(params[:airplane])
    if @airplane.save
      redirect_to @airplane, :flash => { :success => "Aircraft has been created" }
    else
      redirect_to new_airplane_path(:airplane => params[:airplane])
    end
  end
end