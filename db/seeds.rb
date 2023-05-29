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
Product.create!(name: 'Learning Rails',
  price: 9.99)

Product.create!(name: 'Modern sneakers',
  price: 97.95)

Product.create!(name: 'Running shoes',
  price: 150)

Product.create!(name: 'Fancy shoes',
  price: 100)

Product.create!(name: 'Cool boots',
  price: 98.95)
