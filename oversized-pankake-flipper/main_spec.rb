require 'rspec'
require_relative './main'

describe "Oversized pancake flipper" do
  it 'returns the minimum amount of flips' do
    expect(minimum_pancake_flips([0, 1], 1)).to eq 1
    expect(minimum_pancake_flips([1, 1, 1, 1, 1], 4)).to eq 0
    expect(minimum_pancake_flips([0, 1, 0, 1, 0], 4)).to eq nil
    expect(minimum_pancake_flips([0, 0, 0, 1, 0, 1, 1, 0], 3)).to eq 3
    expect(minimum_pancake_flips [0, 1, 0, 1, 0, 1, 0, 1, 0, 1], 2).to eq nil
  end
end

describe 'XOR operations' do
  it 'does xor' do
    expect(xor([0, 0, 0, 0],
               [1, 1, 1, 1])).
         to eq [1, 1, 1, 1]

    expect(xor([1, 1, 1, 1],
               [0, 0, 0, 0])).
         to eq [1, 1, 1, 1]

    expect(xor([1, 1, 0, 1],
               [0, 1, 1, 0])).
         to eq [1, 0, 1, 1]
  end

  it 'does offset xor' do
    a = [1, 0, 0, 1, 0, 1, 1, 1, 0]
    b = [1, 0, 1, 1, 0]

    expect(offset_xor(a, b, 0)).to eq [0, 0, 1, 0, 0, 1, 1, 1, 0]
    expect(offset_xor(a, b, 1)).to eq [1, 1, 0, 0, 1, 1, 1, 1, 0]
    expect(offset_xor(a, b, 2)).to eq [1, 0, 1, 1, 1, 0, 1, 1, 0]
    expect(offset_xor(a, b, 3)).to eq [1, 0, 0, 0, 0, 0, 0, 1, 0]
  end
end
