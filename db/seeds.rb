# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

image = 'https://www.freepnglogos.com/uploads/women-bag-png/download-women-bag-transparent-png-image-pngimg-5.png'
handbag1 = Handbag.create!( name: 'Sling Bag', description: 'Originally made in Italy', photo: image, price: 35)
handbag2 = Handbag.create!(name: 'Travelling Bag', description: 'Originally made in France', photo: image, price: 65)