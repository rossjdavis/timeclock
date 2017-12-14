# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_site = Site.create(name: "Non-Public Work", address: "2112 8th St Nw", ip: "192.168.1.1")

test_user = User.create!(:username => "admin", :password => "password", :is_admin => true)

Job.create(code: "NA00", name: "Unassigned")
Job.create(code: "AP01", name: "Apprentice Plumber - 1")
Job.create(code: "AP02", name: "Apprentice Plumber - 2")
Job.create(code: "AP03", name: "Apprentice Plumber - 3")
Job.create(code: "AP04", name: "Apprentice Plumber - 4")
