class PigLatinizer
  attr_accessor :phrase

  def piglatinize(string)
    string.split(" ").collect do |word|
      if word.downcase.start_with?(/[aeiou]/)
        word += "way"
      elsif word.downcase.start_with?(/[^aeiou][aeiou]/)
        chunk = word[0] + "ay"
        word[1..-1] + chunk
      elsif word.downcase.start_with?(/[^aeiou]{2}[aeiou]/)
        chunk = word[0..1] + "ay"
        word[2..-1] + chunk
      elsif word.downcase.start_with?(/[^aeiou]{3}[aeiou]/)
        chunk = word[0..2] + "ay"
        word[3..-1] + chunk
      end
    end.join(" ")
  end

end
