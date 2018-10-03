class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = "No user found"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to listings_path
  end

end
