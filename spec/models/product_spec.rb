require 'rails_helper'

RSpec.describe Product, type: :model do
  describe ".alphabetical" do
    it "returns nothing if there are no products" do
      expect(Product.alphabetical).to eq []
    end

    it "returns [a] if there is only 1 products" do
      adamhat = Product.create! name: "Adam's hat"
      expect(Product.alphabetical).to eq [adamhat]
    end
    it "should returns [a, b, c] if there are three products" do
      adamhat = Product.create!(name: "Adams hat")
      bradhat = Product.create!(name: "Brad's hat")
      linhat = Product.create!(name: "Lin's hat")

      expect(Product.alphabetical).to eq [adamhat,bradhat,linhat]
    end
  end
end
