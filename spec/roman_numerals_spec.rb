require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('returns a roman numeral with given fixed integer') do
    roman_numerals(10).should(eq("X"))
  end
end
