class PigLatinizer
  attr_reader :text
  def initialize
    @text = text
  end

  def piglatinize(text)
    array = text.split(' ')
    latin = array.map do |word|
      if word[0].match(/[aeiou]/i)
        pigword = word + 'way'
      else
        t = word.split(/([aeiou].*)/i)
        pigword = t[1..-1].join('') + t[0] + 'ay'
      end
      pigword
    end
    latin.join(' ')
  end
end