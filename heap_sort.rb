class HeapSort

  def initialize(arr)
    @list = arr
  end

  def build_heap()
    total_items = @list.length
    total_items.step(0, total_items / 2 - 1) do |i|
      heapify(total_items, i)
    end
  end

  private

  def left(i)
    (2 * i) + 1
  end

  def right(i)
    (2 * i) + 2
  end

  def parent(i)
    (i - 1) / 2
  end

  def heapify(total_items, i)
    largest = i
    left = left(i)
    right = right(i)

    if (left < total_items && @list[left] > @list[largest])
      largest = left
    end

    if (right < total_items && @list[right] > @list[largest])
      largest = right
    end

    if (largest != i)
      swap(@list[i], @list[largest])
      heapify(total_items, largest)
    end

  end
end

# h = HeapSort.new([3,4,2,1])
# h.build_heap()
# h.sort()
