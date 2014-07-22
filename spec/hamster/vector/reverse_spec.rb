require "spec_helper"
require "hamster/vector"

describe Hamster::Vector do
  describe "#reverse" do
    [
      [[], []],
      [[1], [1]],
      [[1,2], [2,1]],
      [(1..100).to_a, (1..100).to_a.reverse]
    ].each do |initial, expected|
      describe "on #{initial}" do
        it "returns #{expected}" do
          Hamster::Vector.new(initial).reverse.should eql(Hamster::Vector.new(expected))
        end
      end
    end
  end
end