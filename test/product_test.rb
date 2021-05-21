require 'rspec'
require './lib/product'

RSpec.describe Product do
  describe 'Creation' do
    it 'exists' do
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      expect(product).to be_an_instance_of(Product)
    end

    it 'has attributes' do
      product = Product.new(:paper, 'toilet paper', 3.70, '10')

      expect(product.category).to eq(:paper)
      expect(product.name).to eq('toilet paper')
      expect(product.unit_price).to eq(3.70)
      expect(product.quantity).to eq(10)
    end
  end

  describe 'methods' do
    it 'can get total_price' do
      product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
      product2 = Product.new(:meat, 'chicken', 4.50, '2')

      expect(product1.total_price).to eq(37.0)
      expect(product2.total_price).to eq(9.0)
    end
  end
end
