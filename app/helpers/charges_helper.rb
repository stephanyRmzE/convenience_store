module ChargesHelper
  def pretty_amount(amount)
    number_to_currency(amount * 100)
  end
end
