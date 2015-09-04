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

end
