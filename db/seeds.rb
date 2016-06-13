# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#USERS
User.create( {name: "Deisi Bonilla",    location:"Den Helder", email:"deisi@yahoo.com",            phone:"+06458324" } )
User.create( {name: "Jorge Oosthoek",   location:"Arnhem",     email:"J@yahoo.com",                phone:"+07458902" } )
User.create( {name: "Vincent Brinkman", location:"Amsterdam",  email:"VincentBrinkman@yahoo.com",  phone:"+06098990" } )

#PRODUCTS
Product.create( {title:"Electric female bicycle", description:"While the batery is full you can cycle for 15 km, then you need to recharge" } )
Product.create( {title:"Tandem bike",             description:"Cycle with your love one or just an imaginary friend" } )
Product.create( {title:"Bakfiets" ,               description:"Carry your children or pets or love one, imaginary people whatever you want, this is the bicycle for you!" } )

#LISTINGS
Booking.create( {start_date:"May 10",   end_date:"May 15" } )
Booking.create( {start_date:"June 20",  end_date:"June 27" } )
Booking.create( {start_date:"April 25", end_date:"April 30" } )
