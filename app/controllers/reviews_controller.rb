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
    @review = Review.new(review_params)
  end

  def edit
    @review =  Review.find(params[:id])
  end

  def update
    @review =  Review.find(params[:id])
  if @review.update_attributes(review_params)
    redirect_to review_path @review
  end

  end

  def destroy
    @review = Review.find(params[:id])
if @review.destroy
  redirect_to root_path
end
  end
end

private
def review_params
  params.require(:review).permit(:rating, :title, :body)

end
