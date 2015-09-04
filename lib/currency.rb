class Currency
  attr_accessor :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(other)
    other.is_a?(Currency) && @amount == other.amount && @code == other.code
  end


end
