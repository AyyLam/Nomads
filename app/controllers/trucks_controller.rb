class TrucksController < ApplicationController

  def index
    @trucks=Truck.all
    if params[:search]
      @trucks = Truck.search(params[:search]).order("created_at DESC")
    else
      @trucks = Truck.all.order("created_at DESC")
    end
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
      redirect_to new_review_path
    else
      redirect_to new_truck_path
    end
  end


  private
  def truck_params
    params.require(:truck).permit(:name, :specialty, :neighborhood_id)
  end

end
