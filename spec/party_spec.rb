# require 'rails_helper'
#
# RSpec.describe Party, type: :model do
#
#
#   it "checkout method totals orders" do
#     user = User.create({username: 'brian', password_digest: 'brian', permission: 2, id: 1})
#     food = Food.create({name: 'taco', description: 'none', price: 2, id: 1})
#     party = user.parties.create({table_num: 1, guest_count: 3, balance: 0, paidyet: 0})
#     order1 = Order.create({party_id: 1, food_id: 1, readyyet: 0, notes: 'none'})
#     order2 = Order.create({party_id: 1, food_id: 1, readyyet: 0, notes: 'none'})
#     order3 = Order.create({party_id: 1, food_id: 1, readyyet: 0, notes: 'none'})
#     actual = party.checkout
#     expected = 6
#
#     expect(actual).to eq(expected)
#
#   end
#
#
#
# end
