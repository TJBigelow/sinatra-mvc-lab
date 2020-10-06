class PigLatinizer
    def piglatinize(text)
        text.split(' ').map do |word|
            if ["a","e","i","o","u"].include?(word.chars.first.downcase)
                word + "way"
            else
                before_vowel = word.split(/[aeiou]/)[0]
                word[before_vowel.length .. -1] + before_vowel + "ay"
            end
        end.join(' ')
    end
end