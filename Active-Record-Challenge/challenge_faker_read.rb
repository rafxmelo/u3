require_relative 'ar.rb'

# Find all categories
categories = Category.all

# Display category names and their associated products
categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  Product: #{product.name}, Price: #{product.price}"
  end
end
