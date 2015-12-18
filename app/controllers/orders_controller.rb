class OrdersController < ApplicationController

  def create
    new_order = Order.create( order_params )
    redirect_to edit_party_path(new_order.party_id)
  end

  private

  def order_params
    params.require(:order).permit(:food_id, :party_id)
  end


end
