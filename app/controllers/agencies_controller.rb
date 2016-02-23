class AgenciesController < ApplicationController
  def index
  end

  def show
    @agency = Agency.find(params[:id])
    @review = Review.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
