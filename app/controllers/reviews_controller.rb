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
    if @review = current_user.reviews.new(review_params)
        @review.save
      redirect_to agencies_path
    else
      redirect_to agencies_path
    end
  end

  def edit
    @review =  Review.find(params[:id])
    unless current_user == @review.user
      redirect_to agencies_path
    end
  end

  def update
    @review =  Review.find(params[:id])
  if @review.update_attributes(review_params)
    redirect_to agency_path @review
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
