class Fibonacci

  def self.of(number)
    return 0 if number.eql?(0)
    return 1 if number.eql?(1)

    return of(number - 1) + of(number - 2)
  end

end