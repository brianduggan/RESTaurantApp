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

  def index
    @users = User.where(:active => 0)
    @users_inactive = User.where(:active => 1)
  end

  def edit
    @user = User.find(params[:id])
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

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to users_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to edit_user_path(user)
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :permission, :active)
  end


end
