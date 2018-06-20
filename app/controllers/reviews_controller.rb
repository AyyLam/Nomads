class ReviewsController < ApplicationController
  before_action :authorized


  def show
    @review=Review.find(params[:id])
    render :show
  end

  def new
    @review=Review.new
  end

  def create
    @review=Review.new(user_id: @curr_user.id, truck_id: params[:review][:truck_id], content: params[:review][:content], rating: params[:review][:rating], image: params[:review][:image])
    if @review.valid?
      @review.save
      redirect_to user_path(@review.user)
    else
      redirect_to new_review_path
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :truck_id, :rating, :image)
  end

end
