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
    if @review.save
      #@review.agency = Agency.find(params[:id])
      redirect_to agencies_path
    end
  end

  def edit
    @review =  Review.find(params[:id])
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
  redirect_to root_path
end
  end
end

private
def review_params
  params.require(:review).permit(:rating, :title, :body, :agency_id, :user_id)

end
