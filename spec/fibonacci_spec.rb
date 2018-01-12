require_relative '../fibonacci'

describe 'Fibonacci' do

  it 'should equal 1 for F(1)' do
    result = Fibonacci.of(1)
    expect(result).to eq(1)
  end

  it 'should equal 13 for F(7)' do
    result = Fibonacci.of(7)
    expect(result).to eq(13)
  end

end