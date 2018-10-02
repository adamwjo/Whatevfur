class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.client_id = session[:user_id]
    @listing.save
    redirect_to listings_path
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def sitter_button
    
    @listing = Listing.find(params[:id])
    @listing.sitter_id = session[:user_id]
    @listing.save
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:sitter_id, :client_id, :start_date, :description, :price, :available)
  end

end
