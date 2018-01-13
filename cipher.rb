class Cipher

  def initialize(text)
    @text = text
  end

  # convert plain text to caesar cipher
  # with pre-defined shift (key) value
  def caesar(key)
    chars = @text.split('')
    result = []

    chars.each do |c|

      # if an alpha char
      if /[A-Za-z]/.match(c)
        a_ord = 0

        # if an uppercase
        if /[[:upper:]]/.match(c)
          a_ord = "A".ord
        else
          a_ord = "a".ord
        end

        replace_ord = a_ord  + (c.ord - a_ord + key) % 26
        replace_char = replace_ord.chr

      else
        replace_char = c
      end

      result << replace_char
    end

    result.join
  end

end