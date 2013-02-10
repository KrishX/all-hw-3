def combine_anagrams(words)
    anagrams_dictionary = Hash.new { |hash, k| hash[k]=[]}

    for word in words
        letters = word.downcase.scan(/\w/).sort.join
        anagrams_dictionary[letters] << word
    end

    anagrams_array = []
    for key in anagrams_dictionary.keys
       anagrams_array << anagrams_dictionary[key]
    end
    anagrams_array
end

