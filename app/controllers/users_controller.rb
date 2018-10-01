class UsersController < ApplicationController

  def new
    @user = User.new
    @user.pets.build
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
  end







  private

  def user_params
    params.require(:user).permit(:name, :bio, pets_attributes: [:name, :species, :description, :dog_friendly])
  end
end