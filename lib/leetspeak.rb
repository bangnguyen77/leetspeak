class String
  define_method(:leetspeak) do
    letter_array = self.split("")
    counter = 0
    letter_array.each() do |letter|
      if letter == "e"
        letter.replace("3")
      elsif letter == "o"
        letter.replace("0")
      elsif letter == "I"
        letter.replace("1")
      elsif letter == "s" && (letter_array[counter-1] != " ")
        letter.replace("z")
      end
      counter += 1
    end
    word_array = letter_array.join("")
    word_array
  end
end
