require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/currency.rb'

class CurrencyTest < Minitest::Test

  def test_currency_exists
    assert(Currency)
  end

  def test_currency_returns_initialize_currency
    currency = Currency.new(5.00, "USD")
    assert_equal(5.00, currency.amount)
    assert_equal("USD", currency.code)
  end

  def test_currency_equals_overload
    curr1 = Currency.new(5.00, "USD")
    curr2 = Currency.new(5.00, "USD")
    curr3 = Currency.new(4.00, "USD")
    curr4 = Currency.new(5.00, "EUR")
    assert(curr1 == curr2)
    refute(curr1 == curr3)
    refute(curr1 == curr4)
  end

end
