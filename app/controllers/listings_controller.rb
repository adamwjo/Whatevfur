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
    if @listing.valid?
      @listing.save
      redirect_to listings_path
    else
      flash[:notice] = "Date cannot be in the past"
      render :new
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
      render :show
  end

  def sitter_button

    @listing = Listing.find(params[:id])
    @listing.sitter_id = session[:user_id]
    @listing.save
    redirect_to listings_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

  def dog_friendly
    @listings = Listing.available_listings.select do |list|
      list.dog_friendly?
    end
  end

  def cat_friendly
    @listings = Listing.available_listings.select do |list|
      list.cat_friendly?
    end
  end

  def kid_friendly
    @listings = Listing.available_listings.select do |list|
      list.child_friendly?
    end
  end


  private

  def listing_params
    params.require(:listing).permit(:sitter_id, :client_id, :start_date, :description, :price, :available)
  end

end
