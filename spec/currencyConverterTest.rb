require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/currencyConverter.rb'

class CurrencyConverterTest < Minitest::Test

 def test_currency_converter_exists
  assert(CurrencyConverter)
 end

end
