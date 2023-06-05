# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Category.delete_all
Picture.delete_all
Product.delete_all
first_category = Category.create!(name: 'books')
second_category = Category.create!(name: 'shoes')
third_category = Category.create!(name: 'web development')

# picture = Picture.create(0)
# picture2 = Picture.create(0)

product = Product.create!(name: 'Learning Rails', price: 9.99)

product.categories << first_category
product.categories << third_category
product.save!

product = Product.create!(name: 'Modern sneakers', price: 97.95)
product.categories << second_category
product.save!

product = Product.create!(name: 'Running shoes', price: 150)
product.categories << second_category
product.save!

product = Product.create!(name: 'Fancy shoes', price: 100)
product.categories << second_category
product.save!

product = Product.create!(name: 'Cool boots', price: 98.95)
product.categories << second_category
product.save!

product = Product.create!(name: 'Learning Javascript', price: 8.95)
product.categories << first_category
product.save!

product = Product.create!(name: 'Learning HTML5', price: 8.95)
product.categories << first_category
product.save!

product = Product.create!(name: 'Learning CSS', price: 8.95)
product.categories << first_category
product.save!
