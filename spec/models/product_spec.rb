require 'rails_helper'

RSpec.describe Product, type: :model do
  describe ".alphabetical" do
    it "returns nothing if there are no products" do
      expect(Product.alphabetical).to eq []
    end

    it "returns [a] if there is only 1 products" do
      a = Product.create! name: 'a'
      expect(Product.alphabetical).to eq [a]
    end
    it "should returns [a, b, c] if there are three products" do
      a = Product.create!(name: 'a')
      b = Product.create!(name: 'b')
      c = Product.create!(name: 'c')

      expect(Product.alphabetical).to eq [a,b,c]
    end
  end
end
