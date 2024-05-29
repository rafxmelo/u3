require_relative 'ar.rb'

# Using new and save
product1 = Product.new(name: 'Product1', description: 'Description1', price: 12.0, stock_quantity: 15)
product1.save
puts "Created product1: #{product1.inspect}"

# Using create
product2 = Product.create(name: 'Product2', description: 'Description2', price: 15.0, stock_quantity: 20)
puts "Created product2: #{product2.inspect}"

# Using a block
product3 = Product.new do |p|
  p.name = 'Product3'
  p.description = 'Description3'
  p.price = 18.0
  p.stock_quantity= 10
end
product3.save
puts "Created product3: #{product3.inspect}"

# Attempt to save an invalid product
invalid_product = Product.new(name: 'Pr', description: nil, price: nil, stock_quantity: nil)
unless invalid_product.save
  puts "Errors: #{invalid_product.errors.full_messages.join(', ')}"
end
