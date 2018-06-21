class ReviewsController < ApplicationController
  before_action :authorized


  def show
    @review=find_review
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

  def edit
    @review = find_review
  end

  def update
    @review = find_review
    @review.update(user_id: @curr_user.id, truck_id: params[:review][:truck_id], content: params[:review][:content], rating: params[:review][:rating], image: params[:review][:image])
    if @review.valid?
      redirect_to user_path(@curr_user)
    else
      render :edit
    end
  end

  def destroy
    @review = find_review
    @review.destroy
    redirect_to user_path(@curr_user)
  end


  private
  def review_params
    params.require(:review).permit(:content, :truck_id, :rating, :image)
  end

  def find_review
    review = Review.find(params[:id])
  end

end
