# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([
  {firstname: "Pauline", lastname:"Muigai", email: "pauline@kise.ac.ke", password:"123", role: "super_admin", department: 'ICT', designation:'ICT Officer' },
  {firstname: "Charles", lastname:"Swaleh", email: "charles@kise.ac.ke", password:"charles", role: "admin", department: 'ICT', designation:'Developer' },
  {firstname: "Fabian", lastname:"Matata", email: "fabian@kise.ac.ke", password:"fabian", role: "user", department: 'ICT', designation:'Developer' }
])

 License.create([
  {license_name: "Microsoft Advanced Threat Protection", purchase_date: "2023-07-29", expiry_date: "2025-07-29", number_of_users: 10},
  {license_name: "Kaspersky Enterprise Protection Solution", purchase_date: "2023-06-28", expiry_date: "2025-09-28", number_of_users: 3},
  {license_name: "Avast Anti Virus Protection", purchase_date: "2022-01-15", expiry_date: "2023-06-30", number_of_users: 2},
  {license_name: "Microsoft Office 365", purchase_date: "2023-04-12", expiry_date: "2024-04-12", number_of_users: 120},
  {license_name: "Adobe Creative Cloud", purchase_date: "2021-07-01", expiry_date: "2023-07-01", number_of_users: 7}
 ])
