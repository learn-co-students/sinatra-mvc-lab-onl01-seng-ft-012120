class PigLatinizer
  def piglatinize(phrase)
    parts = phrase.split(" ").collect do |part|
      part.split(/([aeiouAEIOU].*)/)
    end
    pig_phrase = parts.collect do |part|
      if part.count > 1 && part[0] != ""
        "#{part[1]}#{part[0]}ay"
      else
        p = part.select do |p|
          p != ""
        end
        "#{p[0]}way"
      end
    end
    pig_phrase.join(" ")
  end
end