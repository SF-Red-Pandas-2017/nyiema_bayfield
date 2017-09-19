require_relative "runner.rb"

describe 'product' do
  it 'multiplies the integers of an array and returns the product' do
    expect(calculate_product([1,2,3])).to eq 6
  end
end


