# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
EmployeeType.create(title: 'Administrator', description: 'An admin of the NP D.U.K.E. CRM application.')
EmployeeType.create(title: 'Standard', description: 'A standard user of the NP D.U.K.E. CRM application.')