# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"Admin", last_name:"Admin", role:1, email:"admin@hola.com", password:"12345678", password_confirmation:"12345678")
User.create(name: 'Gianluca', last_name:'Troncossi', role:1, email: 'gtroncossi@miuandes.cl', password: '12345678', password_confirmation: '12345678')
User.create(name: 'Pepe', last_name: 'Apellido', role: 0, email: 'hola@hola.com', password: '12345678', password_confirmation: '12345678')


Project.create(name:"Plumbus", description:"plumbus it's a common thing", email:"rick@morty.tk", project_date:"25/01/2020" ,goal_amount:"124565")