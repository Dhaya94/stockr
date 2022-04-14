# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :first_name => "Mark", :last_name => "Hill", :email => 'mark@ga.co', :password => 'chicken', :admin => true
u1 = User.create :first_name => "Mike", :last_name => "Ross", :email => 'mike@ga.co', :password => 'chicken'
u1 = User.create :first_name => "Harry", :last_name => "Pod", :email => 'harry@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Stock.destroy_all
s1 = Stock.create :symbol => "GOOG"
s2 = Stock.create :symbol => "TSLA" 
s3 = Stock.create :symbol => "SHOP" 
puts "#{ Stock.count } stocks"

# Associations
