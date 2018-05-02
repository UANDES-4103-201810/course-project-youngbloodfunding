# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'Admin', last_name: 'Admin', role: 1, email: 'admin@hola.com', password: 'hola'},
                      {name: 'Gianluca', last_name:'Troncossi', role:1, email: 'gtroncossi@miuandes.cl', password: '0000', picture: 'admin_picture.jpg'},
                      {name: 'Pepe', last_name: 'Apellido', role: 2, email: 'hola@hola.com', password: 'hola'},
                      {name: 'Pepes', last_name: 'Apellidos', role: 2, email: 'hola1@hola.com', password: 'hola1'},
                      {name: 'Pepea', last_name: 'Apellidoa', role: 2, email: 'hola2@hola.com', password: 'hola2'},
                      {name: 'Peped', last_name: 'Apellidod', role: 2, email: 'hola3@hola.com', password: 'hola3'},
                      {name: 'Pepef', last_name: 'Apellidof', role: 2, email: 'hola4@hola.com', password: 'hola4'},
                      {name: 'Pepeg', last_name: 'Apellidog', role: 2, email: 'hola5@hola.com', password: 'hola5'},
                      {name: 'Pepeh', last_name: 'Apellidoh', role: 2, email: 'hola6@hola.com', password: 'hola6'},
                      {name: 'Pepej', last_name: 'Apellidoj', role: 2, email: 'hola7@hola.com', password: 'hola7'},
                      {name: 'Pepek', last_name: 'Apellidok', role: 2, email: 'hola8@hola.com', password: 'hola8'}])
