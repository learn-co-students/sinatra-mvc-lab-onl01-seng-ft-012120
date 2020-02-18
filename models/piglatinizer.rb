
class PigLatinizer

    def self.latin(text)
        latin = []
        words = text.split(" ")
        words.each do |word|
            if word[0].match(/[aeiouAEIOU]/)
                latin << word + "way"
            else 
                str = word[0]
                x=1
                while x < word.length
                    if word[x].match(/[aeiouAEIOU]/)
                        latin << word[x..word.length-1] + str + "ay"
                        x = word.length
                    else 
                        str += word[x]
                        x += 1
                    end
                end
                if str == word 
                    latin << word + "ay"
                end
            end
        end
    latin.join(" ")
    end

    def piglatinize(text)
        PigLatinizer.latin(text)
    end
end
