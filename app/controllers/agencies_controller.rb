class AgenciesController < ApplicationController
  def index

    if params[:search]
      @agencies = Agency.search(params[:search]).order("created_at DESC")
    else
        @agencies = Agency.all
    end
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
