class Product < ApplicationRecord
  belongs_to :category

  include PgSearch::Model
  pg_search_scope :global_search,
        against: [:title],
        associated_against: {
          category: [:title]
        },
        using: {
          tsearch: { prefix: true }
        }

  def price_with_discount(nprice = 0)
    case self.discount
    when 1
      self.price / 2
    when 2
      nprice
    when 3
      self.price * 0.66666666
    else
      self.price
    end
  end
end
