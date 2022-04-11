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
s1 = Stock.create :symbol => "GOOG", :name => "Alphabet Inc ", :latest_price => 2680.21, :icon => 'https://logo.clearbit.com/google.com'
s2 = Stock.create :symbol => "TSLA", :name => "Tesla Inc ", :latest_price => 1025.49, :icon => 'https://logo.clearbit.com/tesla.com'
s3 = Stock.create :symbol => "SHOP", :name => "Shopify Inc ", :latest_price => 603.18, :icon => 'https://logo.clearbit.com/shopify.com'
puts "#{ Stock.count } stocks"

# Associations
