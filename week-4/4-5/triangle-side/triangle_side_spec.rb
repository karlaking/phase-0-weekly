require_relative "my_solution"

describe 'valid_triangle?' do
  it "is defined as a method" do
    expect(defined?(valid_triangle?)).to eq 'method'
  end

  it "expects 3 arguments" do
    expect(method(:valid_triangle?).arity).to eq 3
  end

  it "returns true for an equilateral triangle" do
    length = rand(0.01..100.0)
   expect(valid_triangle?(length, length, length)).to be true
  end

  it "returns false if any of the arguments are 0" do
    # [0, 1, 1].permutation(3) returns all permutations of [0, 1, 1]
    length = rand(0.01..100.0)
    expect([0, length, length].permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }).to be false
  end
