class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    if logged_in?
      @review = current_user.reviews.new(review_params)
    else
      @review = Review.new(review_params)
    end

    if @review.save
      flash[:success] = "Thanks for submitting a review!"
      redirect_to agencies_path
    else
      redirect_to agencies_path
    end
  end

  def edit
    @review =  Review.find(params[:id])
    unless current_user == @review.user
      redirect_to agencies_path(@agency_id)
    end
  end

  def update
    @review =  Review.find(params[:id])
  if @review.update_attributes(review_params)
    redirect_to agencies_path(@agency_id)
  end

  end

  def destroy
    @review = Review.find(params[:id])
if @review.destroy
  redirect_to agencies_path
end
  end
end

private
def review_params
  params.require(:review).permit(:rating, :title, :body, :agency_id).merge(user: current_user)

end
