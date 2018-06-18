class ReviewsController < ApplicationController

  def show
    @review=Review.find(params[:id])
    render :show
  end

  def new
    @review=Review.new
  end

  def create
    @review=Review.new(review_params)

    if @review.valid?
      @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:truck)
  end

end
