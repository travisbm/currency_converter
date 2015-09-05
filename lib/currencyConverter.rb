class CurrencyConverter

  def initialize(codes)
    @codes = codes
  end

  def convert(currency, code)
    new_amount = (currency.amount / @codes[currency.code]) * @codes[code]
    Currency.new(new_amount.round(2), code)
  end

end
