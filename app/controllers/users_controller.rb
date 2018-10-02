class UsersController < ApplicationController

  def new
    @user = User.new
    @user.pets.build
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
      render :show
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :bio, pets_attributes: [:id, :name, :species, :description, :dog_friendly, :cat_friendly, :child_friendly])
  end
end
