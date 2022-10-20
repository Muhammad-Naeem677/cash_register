# CashRegister

-- This app will be able to add products to a cart and compute the total price. --

1. Install ruby in your system
   
2. Run below command to run ruby console in your terminal
    ```
    irb
    ```
3. Then load file in that cosole
   ```
   load 'cart.rb'
   ```
4. Now you can add products to your cart by entering product code and you'll see your total price and cart

## RSpec

-- Test cases with a ruby gem of rspec --  
`Test Behaviour not Implementation`

1. Install rspec gem
   ```
   gem install rspec
   ```
2. Run below command to create specific files for you
   ```
   rspec --init
   ```
3. Clean `spec_helper.rb`  and place only your concerned code

4. Run tests using command
   ```
   rspec
   ```
   It'll execute all spec files in `spec` directory
5. To run run specific file run
   ```
   rspec <file path>
   rspec spec/cart_spec.rb in this case
   ```
6. Added some flags in `.rspec` to view tests in better format
   ```
   --color
   --format doc
   ```
