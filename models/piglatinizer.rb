class PigLatinizer

    attr_accessor :user_text

    def piglatinize(user_text)
        @user_text = user_text
        piglatinize_text(@user_text.split(" "))
    end

    def piglatinize_word(word)
        if word.downcase.chars.first.match(/[aeiou]/)
            word + "way"
        else
            letters = word.chars
            before_arr = []

            letters.each { |x|
                break if x.match?(/[aeiou]/)
                before_arr << x
            }
            letters.shift(before_arr.length)
            letters.join + before_arr.join + "ay"
        end
    end

    def piglatinize_text(array)
        array.map { |word| piglatinize_word(word)}.join(" ")
    end

end