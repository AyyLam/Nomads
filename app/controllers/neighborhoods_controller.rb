class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods=Neighborhood.all
    render :index
  end

  def show
    @neighborhood=Neighborhood.find(params[:id])
    render :show
  end

  def new
    @neighborhood=Neighborhood.new
  end

  def create
    @neighborhood=Neighborhood.new(neighborhood_params)

    if @neighborhood.valid?
      @neighborhood.save
      redirect_to neighborhood_path(@neighborhood)
    else
      render :new
    end
  end

  private
  def neighborhood_params
    params.require(:neighborhood).permit(:name, :specialty)
  end

end
