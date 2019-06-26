# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ganesh = Passenger.create(name: "Ganesh Raj", age: 28)
peter = Passenger.create(name: "Peter Hwang", age: 21)
max = Passenger.create(name: "Max Sun", age: 19)
richard = Passenger.create(name: "Richard Park", age: 19)
rina = Passenger.create(name: "Rina Kawamura", age: 20)

atl = Airport.create(name: "Atlanta Hartsfield-Jackson International Airport", location: "Atlanta")
iad = Airport.create(name: "Washington Dulles International Airport", location: "Washington, D.C.")
jfk = Airport.create(name: "John F. Kennedy International Airport", location: "New York")
bos = Airport.create(name: "Boston Logan International Airport", location: "Boston")
mia = Airport.create(name: "Miami International Airport", location: "Miami")

ticket1 = Ticket.create(passenger: ganesh, airport: atl)
ticket2 = Ticket.create(passenger: richard, airport: iad)
ticket3 = Ticket.create(passenger: ganesh, airport: jfk)
ticket4 = Ticket.create(passenger: rina, airport: bos)
ticket5 = Ticket.create(passenger: max, airport: jfk)
ticket6 = Ticket.create(passenger: peter, airport: mia)
ticket7 = Ticket.create(passenger: ganesh, airport: bos)
ticket8 = Ticket.create(passenger: richard, airport: jfk)
ticket9 = Ticket.create(passenger: max, airport: bos)
ticket10 = Ticket.create(passenger: rina, airport: atl)
