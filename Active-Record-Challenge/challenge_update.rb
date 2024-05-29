require_relative 'ar.rb'

# Find all products with stock quantity greater than 40
products_with_high_stock = Product.where('stock_quantity> ?', 40)

# Increment stock quantity by 1
products_with_high_stock.each do |product|
  product.update(stock_quantity: product.stock_quantity+ 1)
  puts "Updated product: #{product.inspect}"
end
