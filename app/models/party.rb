class Party < ActiveRecord::Base
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :foods, through: :orders
  attr_accessor :balance
  # require 'money'
  # require 'money/bank/google_currency'

  def checkout
    self.balance = 0
    self.orders.each do |order|
      self.balance += order.food.price
    end
    self.balance
  end

  def simple_euro(value)
    rate = 1.09
    value * rate
  end

  # def checkout_euros
  #   dollars = self.checkout
  #   money = Money.new(dollars, "USD")
  #   money.exchange_to(:EUR)
  # end

  def taxer
    tax = self.checkout * 0.08875
    tax.round(2)
  end

  def totaller
    total = self.checkout + self.taxer
    total.round(2)
  end

  def tipper(percent)
    (self.checkout * (percent*0.01))
  end



end
