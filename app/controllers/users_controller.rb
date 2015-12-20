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
    user = User.create(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = user.errors.full_messages
      redirect_to new_user_path
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :permission)
  end


end
