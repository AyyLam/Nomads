class TrucksController < ApplicationController

  def index
    @trucks=Truck.all
    render :index
  end

  def show
    @truck=Truck.find(params[:id])
    render :show
  end

  def new
    @truck=Truck.new
  end

  def create
    @truck=Truck.new(truck_params)

    if @truck.valid?
      @truck.save
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end


  private
  def truck_params
    params.require(:truck).permit(:name, :specialty, :neighborhood_id)
  end

end
