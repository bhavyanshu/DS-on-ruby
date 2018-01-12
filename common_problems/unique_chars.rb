def unique_letters?(str)
  # not considering all ASCII
  return false if str.length > 26

  letters = str.downcase.scan(/[a-z]/i)
  letters.length == letters.uniq.length
end