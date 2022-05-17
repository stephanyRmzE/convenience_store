class Product < ApplicationRecord
  belongs_to :category

  def price_with_discount(nprice = 0)
    case self.discount
    when 1
      new_price = self.price / 2
    when 2
      new_price = nprice
    when 3
      new_price = self.price * 0.66666666
    else
      new_price = self.price
    end
    new_price
  end


end
