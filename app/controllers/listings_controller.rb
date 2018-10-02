class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
  end

  def create
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:sitter_id, :client_id, :start_date, :description, :price, :available)
  end

end
