# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# ユーザーを作成
1_000.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    age: rand(18..80)
  )
end

users = User.all

# 商品を作成
2_000.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 1..100.0)
  )
end

products = Product.all

# 注文を作成
3_000.times do
  Order.create!(
    user_id: users.sample.id,
    product_id: products.sample.id,
    quantity: rand(1..5)
  )
end
