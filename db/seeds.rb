# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   project :name, :description, :video, :image, :email, :project_date, :goal_amount, :user_id, :category_id
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"Admiral General", last_name:"Aladeen", role:1, email:"admin@hola.com", password:"12345678", password_confirmation:"12345678")
User.create(name: 'Gianluca', last_name:'Troncossi', role:1, email: 'gtroncossi@miuandes.cl', password: '12345678', password_confirmation: '12345678')
User.create(name: 'Pepe', last_name: 'Apellido', role: 0, email: 'hola@hola.com', password: '12345678', password_confirmation: '12345678')

Category.create(name: "Technology")

Project.create(name:"Plumbus", description:"plumbus it's a common thing", email:"rick@morty.tk", project_date:"2020-10-12" ,goal_amount:"124565", user_id:1, category_id:1)

Promise.create(name: "Tier 1" ,price: "2341", description: "Doesn't do nothing", estimated_delivery:"2019-10-12", project_id:1)