class Converter

  def initialize(number)
    @number = number
  end

  def to_octal
    result = []

    until @number.eql?(0)
      digit = @number % 8
      @number /= 8
      result << digit
    end

    result.join().reverse.to_i
  end

end