# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Creating user!"

u1 = User.create :name => "Ayush"
u2 = User.create :name => "Lucy"
u3 = User.create :name => "Amy"


Airplane.destroy_all
puts "Creating airplanes!"

a1 = Airplane.create :rows => 3, :columns => 2, :name => "777"
a2 = Airplane.create :rows => 10, :columns => 12, :name => "756"

Flight.destroy_all
puts "Creating flights!"

f1 = Flight.create :flight_num => 12, :from => "SYD", :to => "BRI"
f2 = Flight.create :flight_num => 33, :from => "SYD", :to => "MEL"

Reservation.destroy_all
puts "Making Reservations!"

r1 = Reservation.create :seat_row => "A", :seat_column => "1"
r2 = Reservation.create :seat_row => "B", :seat_column => "20"
r3 = Reservation.create :seat_row => "A", :seat_column => "3"


puts "Associations"
u1.reservations << r1
u2.reservations << r2
u3.reservations << r3

f1.reservations << r1
f2.reservations << r2 << r3

a1.flights << f1
a2.flights << f2
