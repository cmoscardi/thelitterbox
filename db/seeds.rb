# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'EMPTYING MONGODB DATABASE'

Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'setting up defaults...'
cat = Cat.create! :name => 'Sniffles', :email => 'cat@example.com', :password => 'please', :password_confirmation => 'please'

puts 'New user created: ' << cat.name

cat2 = Cat.create! :name => 'Sniffles2', :email => 'cat2@example.com', :password => 'please', :password_confirmation => 'please'

puts 'New User Created: ' << cat2.name
