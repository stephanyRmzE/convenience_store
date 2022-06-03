class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def to_builder
    Jbuilder.new do |item|
      item.price stripe_price_id
      item.quantity 1
    end
  end
end
