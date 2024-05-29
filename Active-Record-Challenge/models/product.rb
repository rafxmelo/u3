class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, :stock_quantity, :description, presence: true

  # Columns in products table:
  # id, name, description, price, stock_quantity, category_id, created_at, updated_at
end
