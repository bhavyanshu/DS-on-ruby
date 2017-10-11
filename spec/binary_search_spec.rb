require_relative '../binary_search'

describe BinarySearch do

  it "is searching for element in list" do
    arr = [*1..1000]
    bs = BinarySearch.new(arr)
    item = rand(1..1000)
    position = bs.search(item)
    expect(position).to eq (item-1)
  end

end
