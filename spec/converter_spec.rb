require_relative '../converter'

describe 'Converter' do

  it 'should convert to octal' do
    result = Converter.new(100).to_octal
    expect(result).to eq(144)
  end

end