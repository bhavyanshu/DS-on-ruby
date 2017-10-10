require_relative '../bubble_sort'

describe BubbleSort do

  it "is sorted from least to greatest" do
    arr = [2,3,1,4]
    bs = BubbleSort.new(arr)
    result = bs.sort
    expect(result).to eq(arr)
  end

  it "has smallest int at the beginning" do
    arr = [2,3,1,4]
    bs = BubbleSort.new(arr)
    expect(bs.sort).to start_with 1
  end

end
