class SessionsController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user.active == 1
      redirect_to login_path
    elsif user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
