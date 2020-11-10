class PigLatinizer

  def piglatinize(sentence)
    words = sentence.split(" ")
    words = words.map do |word|
      if word.start_with?(/[aeiou]/i)
        "#{word}way"
      else
        start = word[/[bcdfghjklmnpqrstvwxyz]*/i]
        "#{word[start.length..]}#{start}ay"
      end
    end
    words.join(" ")
  end
end