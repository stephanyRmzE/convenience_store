class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :amount_to_be_charged

  def new
    raise
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
    redirect_to thanks_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
  end

  private

  def amount_to_be_charged
    @amount = current_cart.order.sub_total
  end
end
