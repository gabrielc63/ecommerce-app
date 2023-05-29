class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :pictures
  accepts_nested_attributes_for :pictures
end
