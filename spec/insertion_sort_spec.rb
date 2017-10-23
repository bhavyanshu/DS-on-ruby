require_relative '../insertion_sort'

describe InsertionSort do

  it "is sorting from least to greatest" do
    arr = Array.new(50) { rand(1...9) }
    is = InsertionSort.new(arr)
    result = is.sort
    expect(result).to eq(arr)
  end

  it "has smallest integer at the beginning" do
    arr = Array.new(50) { rand(1...9) }
    is = InsertionSort.new(arr)
    expect(is.sort).to start_with 1
  end

end
