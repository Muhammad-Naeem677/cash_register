PRODUCTS = {GR1: {name: 'Green Tea', price: 3.11}, SR1: {name: 'Strawberries', price: 5.00}, CF1: {name: 'Coffee', price: 11.23}}.freeze

class Cart

  def self.start_shop
    self.registered_products
    print "\nEnter product code separated with comma(,) >> "
    basket = gets.chomp
    cart = count_items(basket)
    price = calculate_price(cart)
    puts "\n\n**Your Cart*"
    puts ' Basket    |   Total Price   |'
    puts '-----------|-----------------|'
    puts "#{basket}   |   #{price}"
  end

  def self.count_items(basket)
    basket = basket.split(',')
    cart = {GR1: 0, SR1: 0, CF1: 0}
    basket.each do |code|
      case code
      when 'GR1', 'Gr1', 'gR1', 'gr1'
        cart[:GR1] += 1
      when 'SR1', 'Sr1', 'sR1', 'sr1'
        cart[:SR1] += 1
      when 'CF1', 'Cf1', 'cF1', 'cf1'
        cart[:CF1] += 1
      end
    end
    cart
  end

  def self.calculate_price(cart)
    total_price = 0
    cart.each do |key, val|
      next if val == 0
      prod_price = PRODUCTS[key][:price]
      price = (val.to_f/2).ceil * prod_price if key.to_s == 'GR1'
      price = val * (val >= 3 ? 4.50 : prod_price) if key.to_s == 'SR1'
      price = val * (val >= 3 ? 0.67*prod_price : prod_price) if key.to_s == 'CF1'
      total_price += price
    end
    total_price
  end


  private

  def self.registered_products
    puts "\n\n**Products Regitered**"
    puts ' Product code    |   Name    |   Price   |'
    puts '-----------------|-----------|-----------|'
    PRODUCTS.each do |code, product|
      puts " #{code}         |   #{product[:name]}    |   #{product[:price]}   |"
    end
  end
end

Cart.start_shop
