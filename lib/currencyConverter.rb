class CurrencyConverter

  def initialize(codes)
    @codes = codes
  end

  def convert(currency, code)
    if !@codes.has_key?(currency.code) || !@codes.has_key?(code)
      raise UnknownCurrencyCodeError
    else
      new_amount = (currency.amount / @codes[currency.code]) * @codes[code]
      Currency.new(new_amount.round(2), code)
    end
  end

end
