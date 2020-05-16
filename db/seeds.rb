# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Role.delete_all
#Roles
role_types = ['Admin', 'Operator', 'User']

role_types.each do |r|
	Role.create!(name: r)
end

role_type_Admin = Role.first


User.delete_all
user_Serge = User.create!(firstname:'Serge', lastname:'Lafontaine', email: 'slafontaine10@gmail.com', password: 'numb10', password_confirmation: 'numb10', role: role_type_Admin)





Supplier.delete_all
#Suppliers
supplier_types = ['Metro', 'Loblaws', "Costco"]

supplier_types.each do |s|
	Supplier.create!(name: s, user:user_Serge)
end




