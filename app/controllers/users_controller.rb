class UsersController < ApplicationController

  def show
    @parties = Party.all
    @notdone = Order.where(:readyyet => 0)
  end

  def new
    @user = User.new
  end

  def login
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :permission)
  end


end
