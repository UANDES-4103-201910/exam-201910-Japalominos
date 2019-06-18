# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


products = Product.create([{ brand: 'Huawei', model: 'P20', price: '400000', short_description: 'Good Phone' ,long_description:'A good phone'}, { brand: 'Samsung', model: 'Galaxy S10', price: '500000', short_description: 'The Korean Iphone' ,long_description:'A good phone'}, { brand: 'Apple', model: 'Iphone', price: '600000', short_description: 'The Iphone' ,long_description:'A good phone'}])

users = User.create([{first_name: 'Pedro', last_name: 'Soto', email: 'psoto@miuandes.cl'},{first_name: 'Juan', last_name: 'Zapata', email: 'jzapata@miuandes.cl'}, {first_name: 'Diego', last_name: 'Paredes', email: 'dparedes@miuandes.cl'}])

address = Address.create([{phone: '123456789',address_line_1: 'Apt 507', address_line_2:' 944 Río Tamesis', city: 'Santiago', country: 'Chile', zip_code: '12345', user: users[0]},{phone: '123456798',address_line_1: 'Apt 203', address_line_2: 'La Cabana', city: 'Santiago', country: 'Chile', zip_code: '67890', user: users[1]},{phone: '123456987',address_line_1: 'Apt 604', address_line_2: ' 9000 Cristobal Colon', city: 'Santiago', country: 'Chile', zip_code: '54321', user: users[2]}])

