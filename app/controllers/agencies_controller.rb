class AgenciesController < ApplicationController
  def index
      @agencies = Agency.all
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


private
def agency_params
  params.require(:agency).permit(:name, :website, :headquarters, :focus, :logo)

end
