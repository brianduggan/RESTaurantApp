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
    response = HTTParty.get("https://openexchangerates.org/api/latest.json?app_id=7f9ca1044abf4e0182c9368ff1d4a23a")
    result = JSON.parse(response.body)
    @euro_rate = result["rates"]["EUR"]
    @party = Party.find(params[:id])
    @order = Order.new
    @orders = Order.all
  end

  def update
    party = Party.find(params[:id])
    party.update( party_params )
    redirect_to edit_party_path(party)
  end

  def destroy
    party = Party.find(params[:id])
    party.destroy
    redirect_to user_path(current_user)
  end

  private

  def party_params
    params.require(:party).permit(:guest_count, :table_num, :paidyet)
  end

end
