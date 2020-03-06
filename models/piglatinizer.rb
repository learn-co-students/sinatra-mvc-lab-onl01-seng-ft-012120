# class PigLatinizer 

#     def piglatinize(input_str)
#         input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     end

#     private #learn more about this...

#     def consonant?(char)
#         !char.match(/[aAeEiIoOuU]/)
#     end

#     def piglatinize_word(word)
#         # word starts with vowel
#         if !consonant?(word[0])
#             word = word + "w"
#         # word starts with 3 consonants
#         elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#             word = word.slice(3..-1) + word.slice(0,3)
#         # word starts with 2 consonants
#         elsif consonant?(word[0]) && consonant?(word[1])
#             word = word.slice(2..-1) + word.slice(0,2)
#         # word starts with 1 consonant
#         else
#             word = word.slice(1..-1) + word.slice(0)
#         end
#         word << "ay"
#     end

#     def piglatinize_sentence(sentence)
#         sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#     end
    

# end

class PigLatinizer

    attr_accessor :user_phrase

    def piglatinize(user_phrase)
        @user_phrase = user_phrase
        piglatinize_text(@user_phrase.split(" "))
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