class ReceiptItem
  include TaxHelper

  attr_accessor :quantity, :product_name, :price

  def initialize(quantity, product_name, price)
    self.quantity = quantity.to_i
    self.product_name = product_name.strip
    self.price = price.to_f
  end

  def to_a
    [quantity, product_name, price]
  end

  def tax_value
    @tax_value ||= get_tax_rate(product_name) * price
  end
end
