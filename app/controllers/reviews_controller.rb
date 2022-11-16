class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # find the right restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # create new review
    @review = Review.new(review_params)
    # assign review to right restaurant
    @review.restaurant = @restaurant
    # save it!
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant)
      # render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
