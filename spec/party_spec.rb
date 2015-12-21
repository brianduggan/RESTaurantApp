require 'rails_helper'

RSpec.describe Party, type: :model do

  it "checkout method totals orders" do
    user = User.create!({username: 'brian1', password: 'brian1', permission: 2, id: 1})
    food = Food.create!({name: 'taco', description: 'none', price: 2, id: 1})
    party = Party.create!({table_num: 1, guest_count: 3, balance: 0, paidyet: 0, user_id: 1})
    order1 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})
    order2 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})
    order3 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})

    actual = party.checkout
    expected = 6
    
    expect(actual).to eq(expected)

  end

  it "calculates tax properly" do
    user = User.create!({username: 'brian1', password: 'brian1', permission: 2, id: 1})
    food = Food.create!({name: 'taco', description: 'none', price: 2, id: 1})
    party = Party.create!({table_num: 1, guest_count: 3, balance: 0, paidyet: 0, user_id: 1})
    order1 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})
    order2 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})
    order3 = party.orders.create({party_id: 15, food_id: 1, readyyet: 0, notes: 'none'})

    actual = party.taxer
    expected = 0.53

    expect(actual).to eq(expected)

  end



end
