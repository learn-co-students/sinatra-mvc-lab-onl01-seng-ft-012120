require 'pry'
class PigLatinizer
    attr_accessor :word

    def initialize 
        @word = word
    end
    
    def piglatinize(word)
        vowels = "aeiouAEIOU"
        letters = word.split("")
        if vowels.include?(letters[0])
         word.concat('way')
        else
            word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
        end
    end

    def sentence_to_piglatin(word)
        word.split.collect{|w| piglatinize(w)}.join(' ')
    end

end