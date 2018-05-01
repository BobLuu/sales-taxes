class NumberHelper
  def self.currency_to_s(number)
    sprintf("%.2f", number.round(2))
  end
end