# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Truck.delete_all

(1...20).each do |truck|
	name = Faker::Commerce.product_name
	food = Faker::Commerce.color

	truck = Truck.create name: name, type_of_food: food 
end





# doc = Nokogiri::HTML(open('http://www.roaminghunger.com/ny'))
# name = doc.css('.squarelist')


