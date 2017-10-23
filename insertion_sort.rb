class InsertionSort
  def initialize(arr)
    @list = arr
  end

  def sort
    for i in (1..@list.length - 1)
      key = @list[i]
      j = i-1

      # Compare and move elements according to key,
      # to one position ahead
      while j >= 0 && key < @list[j] do
          @list[j+1] = @list[j]
          j = j-1
      end
      @list[j+1] = key
    end
    @list
  end

end
