class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :order_list


  def create
    @session = Stripe::Checkout::Session.create({
      customer: current_user.stripe_customer_id,
      payment_method_types: ['card'],
      line_items: [list_items],
      mode: 'payment',
      success_url: success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url: cancel_url
    })
    redirect_to @session.url
    @order.update(status: 'pending', first_name: current_user.first_name, last_name: current_user.last_name)
  end

  def success
    current_cart.remove_all
    if params[:session_id].present?
      # session.delete(:cart)
      @session_with_expand = Stripe::Checkout::Session.retrieve({ id: params[:session_id], expand: ["line_items"]})
    else
      redirect_to cancel_url, alert: "No info to display"
    end
  end

  def cancel
  end

  private

  def order_list
    @order = Order.find(current_cart.order.id)
    @order_items = @order.items
  end

  def list_items
    @order_items.collect do |item|
      {
        price_data: {
          currency: 'eur',
          unit_amount: (item.price * 100).to_i,
          product_data: { name: item.product.title}
        },
        quantity: item.quantity
      }
    end
  end

end
