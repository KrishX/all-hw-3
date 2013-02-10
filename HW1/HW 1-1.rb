#Part A - Palindromes

def palindrome?(str)
  raw_string = str.gsub(/\W/, '')
  raw_string.downcase == raw_string.downcase.reverse
end


#Part B - Count words

def count_words(str)
  words = Hash.new(0)
  str.downcase.scan(/\w+/i).each do |word|
  words[word] = words[word] + 1
  end
  words
end