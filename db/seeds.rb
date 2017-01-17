# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'eliass_56@hotmail.com', password: 'password', password_confirmation: 'password')
TipoSangre.create!(nombre: 'O+')
TipoSangre.create!(nombre: 'O-')
TipoSangre.create!(nombre: 'A+')
TipoSangre.create!(nombre: 'A-')
TipoSangre.create!(nombre: 'B+')
TipoSangre.create!(nombre: 'B-')
TipoSangre.create!(nombre: 'AB+')
TipoSangre.create!(nombre: 'AB-')

HabitacionTipo.create(nombre: 'sensilla', precio: 1500)
HabitacionTipo.create(nombre: 'privada', precio: 2500)
HabitacionTipo.create(nombre: 'suite', precio: 5000)