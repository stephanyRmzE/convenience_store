class OrderItemsController < ApplicationController
  def index
    @items = current_cart.order.items
    sum = 0
    @items.each do |item|
      if item.quantity >= 3 && (item.product.discount == 2 || item.product.discount == 3)
        item.price = item.product.price_with_discount(4.5)
      elsif item.quantity >= 2 && item.product.discount == 1
        item.price = item.product.price_with_discount
      end
      sum += item.price * item.quantity
    end
    @order = Order.find(current_cart.order.id)
    @order.sub_total = sum
    @order.save
  end

  def create
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    redirect_to cart_path
  end

  def destroy
    current_cart.remove_item(id: params[:id])
    redirect_to cart_path
  end

end
