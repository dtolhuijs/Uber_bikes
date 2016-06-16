# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#USERS
# t.string   "name"
# t.string   "location"
# t.string   "email"
# t.string   "phone"
User.delete_all

users = [

["Deisi Bonilla", "Den Helder", "deisi@yahoo.com", "+06458324", "123"],
["Jorge Oosthoek", "Arnhem", "J@yahoo.com", "+07458902", "123"],
["Vincent Brinkman", "Amsterdam", "VincentBrinkman@yahoo.com", "+06098990", "123"]
]

users.each do | name, location, email, phone, password |
   User.create( name: name, location: location, email: email, phone:phone, password:password )
end
#
# #PRODUCTS
# # t.string   "title"
# # t.text     "description"

products = [

["Electric female bicycle", %{While the batery is full you can cycle for 15 km, then you need to recharge}],
["Tandem bike", %{"Cycle with your love one or just an imaginary friend"}],
["Bakfiets", %{"Carry your children or pets or love one, imaginary people whatever you want, this is the bicycle for you!"}]
]

products.each do | title, description |
   Product.create( title: title, description: description )
end

# #Bookings
# t.datetime "start_date"
# t.datetime "end_date"
# Booking.create( {start_date:(Time.now - 2.days),   end_date:"May 15" }, name, location )
# Booking.create( {start_date:"June 20",  end_date:"June 27" } )
# Booking.create( {start_date:"April 25", end_date:"April 30" } )

bookings = [

[(Time.now - 50.days), (Time.now - 45.days)],
[(Time.now - 2.days), (Time.now - 5.days)],
[(Time.now - 4.days), (Time.now - 6.days)]
]

bookings.each do | start_date, end_date |
   Booking.create( start_date: start_date, end_date: end_date )
end
