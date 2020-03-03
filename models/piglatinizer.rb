class PigLatinizer
    attr_reader :new_words
    @@blends = [ 'bl', 'br', 'ch', 'ck', 'cl', 'cr', 'dr', 'fl', 'fr', 'gh', 'gl', 'gr', 'ng', 'ph', 'pl', 'pr', 'qu', 'sc', 'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr', 'sch', 'scr', 'shr', 'spl', 'spr', 'squ', 'str', 'thr', 'Str']
    def initialize
    end

    def split_words(words)
        words.split(" ")
    end

    def start_vowel?(my_word)
        return true if ['a', 'e', 'i', 'o', 'u'].include?(my_word[0])
        return true if ['A', 'E', 'I', 'O', 'U'].include?(my_word[0])
    end

    def start_cons?(word)
        return true if !['a', 'e', 'i', 'o', 'u'].include?(word[0])
        return true if !['A', 'E', 'I', 'O', 'U'].include?(my_word[0])
    end

    def add_way(word)
        word << 'way'
    end

    def add_ay(word)
        new_word =''
        if @@blends.include?(word[0..1])
            if @@blends.include?(word[0..2])
                new_word = word[3..-1] + word[0..2] + "ay"
            else
                new_word = word[2..-1] + word[0..1] + "ay"
            end
        elsif @@blends.include?(word[0..2])
            new_word = word[3..-1] + word[0..2] + "ay"
        else
            new_word = word[1..-1] + word[0] + "ay"
        end
        new_word
    end

    def piglatinize(words)
        if words.split(' ').count > 1
            @new_words = []
            words_list = split_words(words)
            words_list.each do |word|
                if start_vowel?(word) == true
                    @new_words << add_way(word) 
                elsif start_cons?(word) == true
                    @new_words << add_ay(word) 
                end
            end
            @new_words = @new_words.join(" ")
        else
            @new_words = ""
            if start_vowel?(words) == true
                @new_words << add_way(words)
            elsif start_cons?(words) == true 
                @new_words << add_ay(words) 
            end
        end
        @new_words
    end
                    

end