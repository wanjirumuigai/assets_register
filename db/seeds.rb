# This file should contain all the record creation needed to seed the da"assetName"tabase with its default values.
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


Asset.create([
  {
    asset_name: "Desktop Computer",
    model: "Dell Vostro",
    asset_tag: "IT5637",
    serial_no: "ABC123",
    category: "Desktops",
    status: "in_use"
    purchase_price: 100_000,
  },
  {
    asset_name: "Asus",
    model: "Asus Zenbook",
    asset_tag: "IT678",
    serial_no: "ytu3771",
    category: "laptops",
    status: "deployed",
    purchase_price: 120_000,
  },
  {
    asset_name: "HP LAPTOP",
    model: "HP",
    asset_tag: "ITHP091",
    serial_no: "YDHDBVS3",
    category: "laptops",
    status: "obsolete",
    purchase_price: 45_000,
  },
  {
    asset_name: "HP LAPTOP",
    model: "HP",
    asset_tag: "ITHP091",
    serial_no: "YDHDBVS2",
    category: "laptops",
    status: "obsolete",
    purchase_price: 45_000,
  },
  {
    asset_name: "HP LAPTOP",
    model: "HP",
    asset_tag: "ITHP091",
    serial_no: "YDHDBVS1",
    category: "laptops",
    status: "obsolete",
    purchase_price: 45_000,
  },
  {
    asset_name: "Laptop",
    model: "Asus Zenbook",
    asset_tag: "KISE/ICT/0526",
    serial_no: "GH5672H",
    category: "Laptops",
    status: "Deployed",
    purchase_price: 172_000,
  },
  {
    asset_name: "Laptop",
    model: "Asus Zenbook",
    asset_tag: "KISE/ICT/0526",
    serial_no: "hdgdy7898",
    category: "Laptops",
    status: "Ready to Deploy",
    purchase_price: 100_000,
  },
  {
    asset_name: "Laptop",
    model: "Asus Zenbook",
    asset_tag: "KISE/ICT/0526",
    serial_no: "hdgdy7898",
    category: "Laptops",
    status: "Ready to Deploy",
    purchase_price: 150_000,
  },
  {
    asset_name: "UPS",
    model: "Mecer 650v",
    asset_tag: "KISE/ICT/0527",
    serial_no: "HJDT2677",
    category: "Accessories",
    status: "Broken",
    purchase_price: 7_500,
  },
  {
    asset_name: "Projector",
    model: "Epson",
    asset_tag: "KISE/ICT/0528",
    serial_no: "FGH4572",
    category: "Audio/Visual",
    status: "Obsolete",
    purchase_price: 50_000,
  },
  {
    asset_name: "Mouse",
    model: "HP",
    asset_tag: "KISE/ICT/0981",
    serial_no: "KISE/ICT/1083",
    category: "Accessories",
    status: "Ready to Deploy",
    purchase_price: 999,
  },
  {
    asset_name: "Keyboard",
    model: "Logitech",
    asset_tag: "KISE/ICT/0526",
    serial_no: "CN256781",
    category: "Accessories",
    status: "Deployed",
    purchase_price: 1000,
  }
])
