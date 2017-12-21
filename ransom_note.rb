# solution for hackerrank problem
# https://www.hackerrank.com/challenges/ctci-ransom-note/problem

# Build frequency map for words in ransom note
def freq_map(string)
  words = {}
  string.split(" ").each do |word|
    if words.key?(word)
      words[word] += 1
    else
      words.store(word, 1)
    end
  end

  words
end

# Check if we can form ransom words
# from given magazine words
def can_form(mag_words, ransom_words)
  ransom_words.each do |rw|
    if mag_words.scan(rw[0]).length < rw[1]
      return "No"
    end
  end

  return "Yes"
end

mag_words = "apgo clm w lxkvg mwz elo bg elo lxkvg elo apgo apgo w elo bg"
ransom_words = freq_map("elo lxkvg bg mwz clm w")

puts can_form(mag_words, ransom_words)