require_relative 'ar.rb'
require 'faker'

# Create categories and products using Faker
10.times do
  category = Category.create(name: Faker::Commerce.department)

  5.times do
    product = category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: rand(1..100),  # Use rand with an integer range
      stock_quantity: rand(1..50)  # Use rand with an integer range
    )
    puts "Created product: #{product.inspect}"
  end
end
