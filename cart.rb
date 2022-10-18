PRODUCTS = {GR1: {name: 'Green Tea', price: 3.11}, SR1: {name: 'Strawberries', price: 5.00}, CF1: {name: 'Coffee', price: 11.23}}.freeze

class Cart

  def self.start_shop
    cart = {GR1: 0, SR1: 0, CF1: 0}
    while true
      puts "\n\n**Products Regitered**"
      puts ' Product code    |   Name    |   Price   |'
      puts '-----------------|-----------|-----------|'
      PRODUCTS.each do |code, product|
        puts " #{code}         |   #{product[:name]}    |   #{product[:price]}   |"
      end

      puts "\nEnter product code to add in your cart"
      puts 'Enter e/E to exit'
      print 'Enter something >> '

      case gets.chomp
      when 'GR1', 'Gr1', 'gR1', 'gr1'
        cart[:GR1] += 1
      when 'SR1', 'Sr1', 'sR1', 'sr1'
        cart[:SR1] += 1
      when 'CF1', 'Cf1', 'cF1', 'cf1'
        cart[:CF1] += 1
      when 'e', 'E'
        return
      else
        puts 'Please enter something from menue!'
      end
    end
  end

end

Cart.start_shop
