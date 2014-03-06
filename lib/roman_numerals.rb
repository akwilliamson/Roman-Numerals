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

puts roman_numerals(3999)




def reverse_roman_numerals(input)

numerals = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
  }

translated_numerals = 0
inputted_numerals = input.split("")
    
      inputted_numerals.length.times do |i| 
      numerals.each do |numeral, value|


      if inputted_numerals[-2] == "I" && inputted_numerals[-1] != "I"
        translated_numerals -= 1
        inputted_numerals.delete_at(-2)
      end

      if inputted_numerals[-2] == "X" && inputted_numerals[-1] != "X" && inputted_numerals[-1] != "I"
        translated_numerals -= 10
        inputted_numerals.delete_at(-2)
      end

      if inputted_numerals[-2] == "C" && inputted_numerals[-1] != "C" && inputted_numerals[-1] != "I" && inputted_numerals[-1] != "X"
        translated_numerals -= 100
        inputted_numerals.delete_at(-2)
      end

      if inputted_numerals[-1] == numeral
        translated_numerals += value
        inputted_numerals.delete_at(-1)
      end
    end
  end 
  translated_numerals
end

puts reverse_roman_numerals("MMMCMXCIX")
