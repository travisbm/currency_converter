require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

require_relative '../lib/currencyConverter.rb'  # => true
require_relative '../lib/currency.rb'           # => true

class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverterTest < Minitest::Test

  def test_currency_converter_exists
    assert(CurrencyConverter)         # => true
  end

  def test_currency_converter_initialize
    convert = CurrencyConverter.new(codes = {USD: 1.0, EUR: 0.89686})  # => #<CurrencyConverter:0x007fa03c951a30 @codes={:USD=>1.0, :EUR=>0.89686}>
  end

  def test_currency_converter_convert
    currency_converter = CurrencyConverter.new(codes = {USD: 1.0, EUR: 0.89686, JPY: 118.958, CAD: 1.32795 })                                 # => #<CurrencyConverter:0x007fa03c94ba68 @codes={:USD=>1.0, :EUR=>0.89686}>
    assert_equal(Currency.new(8.97, :EUR), currency_converter.convert(Currency.new(10.00, :USD), :EUR ))
    assert_equal(Currency.new(895.80, :JPY), currency_converter.convert(Currency.new(10.00, :CAD), :JPY ))
    assert_equal(Currency.new(0.08, :USD), currency_converter.convert(Currency.new(10.00, :JPY), :USD ))
  end

  def test_unknown_currency_code_error
    currency_converter = CurrencyConverter.new(codes = {USD: 1.0, EUR: 0.89686, JPY: 118.958, CAD: 1.32795 })                                 # => #<CurrencyConverter:0x007fa03c94ba68 @codes={:USD=>1.0, :EUR=>0.89686}>
    assert_raises(UnknownCurrencyCodeError){currency_converter.convert(Currency.new(10.00, :GBP), :EUR )}
    assert_raises(UnknownCurrencyCodeError){currency_converter.convert(Currency.new(10.00, :USD), :GBP )}
  end

end
