def roman_numerals(number)
numerals= {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1,
  }
  
  returned_numeral = ""
  countdown = number
  
  until countdown <= 0 
    numerals.each do |numeral, value|
      if countdown >= value
        returned_numeral << numeral
        countdown -= value
        break
      end
    end 
  end
  returned_numeral
end

puts roman_numerals(163)

