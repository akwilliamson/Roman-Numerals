require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('returns a roman numeral with given fixed integer') do
    roman_numerals(10).should(eq("X"))
  end

  it('Returns a roman numeral output up to three') do
    roman_numerals(3).should(eq("III"))
  end

  it('Returns a roman numeral character for any number entered up to 3999') do
    roman_numerals(163).should(eq("CLXIII"))
  end
end

describe('reverse_roman_numerals') do
  it('returns a number given a matching roman numeral') do
    reverse_roman_numerals("IV").should(eq(4))
  end
end
