require_relative '../cipher'

describe 'Caesar Cipher' do

  it 'should convert middle-Outz to okffng-Qwvb with shift of 2' do
    c = Cipher.new('middle-Outz')
    result = c.caesar(2)
    expect(result).to eq('okffng-Qwvb')
  end
end