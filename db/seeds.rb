# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create :email => "eeorcutt@uh.edu", :password => "test123", :admin => "t"
user2 = User.create :email => "test@np.com", :password => "test123", :admin => "t"