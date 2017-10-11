class BinarySearch

  def initialize(arr)
    @list = arr
  end

  def search(item)
    start, last = [0, @list.length - 1]

    while start <= last do
      mid = (start + last)/2
      if @list[mid] == item
        return mid
      elsif @list[mid] < item
        start = mid + 1
      else
        last = mid - 1
      end
    end

    false
  end

end
