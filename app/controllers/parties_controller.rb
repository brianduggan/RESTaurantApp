class PartiesController < ApplicationController

  def new
    @party = Party.new
  end

  def create
    new_party = Party.create(party_params)
    new_party.update({user_id: current_user.id})
    redirect_to user_path(current_user)
  end

  def edit
    @party = Party.find(params[:id])
    @order = Order.new
    @orders = Order.all
  end

  def update
    party = Party.find(params[:id])
    party.update( party_params )
    redirect_to edit_party_path(party)
  end

  private

  def party_params
    params.require(:party).permit(:guest_count)
  end

end
