class Currency
  attr_accessor :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(other)
    other.is_a?(Currency) && @amount == other.amount && @code == other.code
  end

  def +(other)
    if other.is_a?(Currency) && @code == other.code
      new_currency = Currency.new((@amount + other.amount), code)
    else
      raise DifferentCurrencyCodeError
    end
    new_currency.amount
  end

  def -(other)
    if other.is_a?(Currency) && @code == other.code
      new_currency = Currency.new((@amount - other.amount), code)
    else
      raise DifferentCurrencyCodeError
    end
    new_currency.amount
  end

  def *(other)
    if other.is_a?(Fixnum) || other.is_a?(Float)
      new_currency = Currency.new((@amount * other), @code)
    end
    new_currency.amount
  end


end
