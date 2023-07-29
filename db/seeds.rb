# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([
  {firstname: "Pauline", lastname:"Muigai", email: "pauline@kise.ac.ke", password:"123", role: "super_admin", department: 'ICT', designation:'ICT Officer' },
  {firstname: "Charles", lastname:"Swaleh", email: "charles@kise.ac.ke", password:"charles", role: "admin", department: 'ICT', designation:'Developer' }
  {firstname: "Fabian", lastname:"Matata", email: "fabian@kise.ac.ke", password:"fabian", role: "user", department: 'ICT', designation:'Developer' }
])

