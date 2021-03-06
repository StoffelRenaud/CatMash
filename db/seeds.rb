# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
puts 'Cat is being destroyed...'
Cat.destroy_all
puts 'Done...'

puts 'Cat is being created'
filepath         = 'https://latelier.co/data/cats.json'
@serialized_cats = open(filepath).read
@cats            = JSON.parse(@serialized_cats)
@cats['images'].each do |cat|
  Cat.create!(url: cat['url'],
              rate: 0)
end
puts 'Done...'
