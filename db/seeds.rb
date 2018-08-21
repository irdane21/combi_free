require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Combi.destroy_all
User.destroy_all

standard_user = User.create!(email: 'toto@toto.fr', password: 'password')

10.times do
 Combi.create!(
   model:'california',
   description:'Spacious and confortable',
   price: [80, 120, 160].sample ,
   user: standard_user,
   lat: Faker::Address.latitude.to_i,
   lng: Faker::Address.longitude.to_i,
   address: Faker::Address.street_address,
   city: Faker::Address.city,
   #postal_code: Faker::Address.zip_code,
   #country: Faker::Address.country
 )
end
