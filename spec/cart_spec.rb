
require 'cart.rb'

describe 'Cash Register' do
  def basket_price(basket)
    cart = Cart.count_items(basket)
    Cart.calculate_price(cart)
  end
  describe 'Green Tea' do
    it 'one get one free' do
      expect(basket_price('GR1,GR1')).to eq(3.11)
    end
  end
  describe 'Strawberries' do
    it 'less than 3, price 5.00€/strawberry' do
      expect(basket_price('SR1')).to eq(5)
      expect(basket_price('SR1,SR1')).to eq(10)
    end
    it '3 or more, price 4.50€/strawberry' do
      expect(basket_price('SR1,SR1,SR1')).to eq(13.5)
      expect(basket_price('SR1,SR1,SR1,SR1')).to eq(18)
    end
  end
  describe 'Coffee' do
    it 'less than 3, price 11.23€/coffee' do
      expect(basket_price('CF1')).to eq(11.23)
      expect(basket_price('CF1,CF1')).to eq(22.46)
    end
    it '3 or more, price drops to 2/3 of 11.23€/coffee' do
      expect(basket_price('CF1,CF1,CF1')).to be_between(22, 23)
      expect(basket_price('CF1,CF1,CF1,CF1')).to be_between(30, 31)
    end
  end
end
