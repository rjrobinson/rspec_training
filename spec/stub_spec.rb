class Product
  attr_reader :price  
end


class PriceCalculator

  def add product
    products << product
  end

  def products
    @products ||= []
  end

  def final_price
    @products.map(&:price).inject(&:+)
  end
end



describe 'Stubs' do
  it 'provides stubs to simulate state' do
    calculator = PriceCalculator.new

    calculator.add instance_double("Product", price: 1.0)
    calculator.add instance_double("Product", price: 100.25)

    expect(calculator.final_price).to eq 101.25
  end

end
