class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :amount_to_be_charged

  def new
  end

  def create
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
  )
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      currency: 'eur'
    )
    current_cart.destroy
    redirect_to thanks_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to cancel_path
  end

  def thanks
  end

  private

  def amount_to_be_charged
    @order = Order.find(current_cart.order.id)
    @amount = (@order.sub_total * 100).to_i
  end
end
