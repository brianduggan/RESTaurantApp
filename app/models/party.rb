class Party < ActiveRecord::Base
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :foods, through: :orders

  attr_accessor :balance

  def checkout
    self.balance = 0
    self.orders.each do |order|
      self.balance += order.food.price
    end
    self.balance
  end

  def taxer
    tax = self.checkout * 0.08875
    tax.round(2)
  end

  def totaller
    total = self.checkout + self.taxer
    total.round(2)
  end


end
