class OrdersController < ApplicationController

  def index
    @orders = Order.where(:readyyet => 0)
  end

  def create
    new_order = Order.create( order_params )
    redirect_to edit_party_path(new_order.party_id)
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params )
    redirect_to party_orders_path(current_user)
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to edit_party_path(order.party_id)
  end


  private

  def order_params
    params.require(:order).permit(:food_id, :notes, :party_id, :readyyet)
  end


end
