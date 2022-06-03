class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def to_builder
    Jbuilder.new do |product|
      product.price_data [
        currency: 'eur',
        unit_amount: (price * 100).to_i,
        product: product_id
      ]
      product.quantity quantity
    end
  end

end
