require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/currency.rb'

class CurrencyTest < Minitest::Test

  def test_currency_exists
    assert(Currency)
  end

end
