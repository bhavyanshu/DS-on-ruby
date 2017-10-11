require_relative '../bubble_sort'

describe BubbleSort do

  it "is sorting from least to greatest" do
    arr = Array.new(50) { rand(1...9) }
    bs = BubbleSort.new(arr)
    result = bs.sort
    expect(result).to eq(arr)
  end

  it "has smallest integer at the beginning" do
    arr = Array.new(50) { rand(1...9) }
    bs = BubbleSort.new(arr)
    expect(bs.sort).to start_with 1
  end

end
