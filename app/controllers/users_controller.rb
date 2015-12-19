class UsersController < ApplicationController

  def show
    @parties = Party.where(:paidyet => 0)
    @notdone = Order.where(:readyyet => 0)
    @currentorders = current_user.orders.where(readyyet: 0)
    @currentparties = current_user.parties.where(paidyet: 0)
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
