class PigLatinizer

    def piglatinize(string)
        string.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        if word[0].downcase.match(/[aeiou]/) != nil
            word + "way"
        else
            first_vowel_index = word.index(/[aAeEiIoOuU]/)
            consenants = word.slice(0..first_vowel_index-1)
            rest_of_word = word.slice(first_vowel_index..word.length)
            rest_of_word + consenants + "ay"
        end
    end
end