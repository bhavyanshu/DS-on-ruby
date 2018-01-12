def freq_map(string)
  letters = {}
  string.each_char do |c|
    # add char as key to map if it doesn't exist
    # increment if it does
    if letters.key?(c)
      letters[c] += 1
    else
      letters.store(c, 1)
    end
  end

  letters
end

def letters_to_delete(string1, string2)
  a = freq_map(string1)
  b = freq_map(string2)
  (a.keys & b.keys).each {|k| puts a[k] == b[k] ? a[k] : k }
end
#
# puts letters_to_delete("cde", "abc")