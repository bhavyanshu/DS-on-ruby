class BubbleSort
  def initialize(arr)
    @list = arr
  end

  def sort
    swapped = true
    begin
      swapped = false
      for i in 0..@list.length-1
        if @list[i+1]
          if @list[i] > @list[i+1]
            @list[i] = @list[i] + @list[i+1]
            @list[i+1] = @list[i] - @list[i+1]
            @list[i] = @list[i] - @list[i+1]
            swapped = true
          end
        end
      end
    end until !swapped
    @list
  end

end
