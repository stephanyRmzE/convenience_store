class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :amount_to_be_charged

  def new
    raise
  end

  def create
    @session = Stripe::Checkout::Session.create({
      customer: current_user.customer.id,
      payment_method_types: ['card'],
      line_items: cart_items,
      mode: 'payment',
      success_url: success_url,
      cancel_url: cancel_url
    })
    redirect_to @session.url
    @order.update(status: 'pending', first_name: current_user.first_name, last_name: current_user.last_name)
  end

  def thanks
  end

  private

  def amount_to_be_charged
    @order = Order.find(current_cart.order.id)
    @cart = {}
    @cart = @order.items.map(&:product)
    @amount = (@order.sub_total * 100).to_i
  end
end
