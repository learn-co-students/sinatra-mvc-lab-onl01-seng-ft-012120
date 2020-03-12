class PigLatinizer

    def piglatinize str 
        letters = ('a'..'z').to_a #to array
        vowels = ['a', 'e', 'i', 'o', 'u']
        consonants = letters - vowels
        
        if vowels.include?(str[0])
            str + 'ay"'
        elsif consonants.include?(str[0]) && consonants.include?(str[1])
            str[2..-1] + str[0..1] + 'ay'
        elsif consonants.include?(str[0])
            str[1..-1] + str[0] + 'ay'
        else
            str        
        end    
    end 

end