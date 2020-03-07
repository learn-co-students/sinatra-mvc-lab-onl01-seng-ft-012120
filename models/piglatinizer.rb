class PigLatinizer
    # always ends with "ay"
    # if word starts with a vowel, word + "w"
    # if word starts with three consonants, word + "three consonants"
    # if word starts with two consonants, word + "two consontants"
    # if word starts with one consonant, word + "consonant"

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize(input_string)
       if input_string.split(" ").count > 1
        piglatinize_sentence(input_string)
       else
        piglatinize_word(input_string)
       end
    end

    def piglatinize_sentence(input_sentence)
        new_words = []

        input_sentence.split(" ").each do |word|
            new_words << piglatinize_word(word)
        end

        new_words.join(" ")

    
    end

  def piglatinize_word(word)

    if vowel?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end
end