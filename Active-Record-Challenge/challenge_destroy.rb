require_relative 'ar.rb'

# Find one of the products created in challenge_create.rb
product_to_delete = Product.find_by(name: 'Product1')

# Delete the product
if product_to_delete
  product_to_delete.destroy
  puts "Deleted product: #{product_to_delete.inspect}"
else
  puts "Product not found"
end
