# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.create([
  {code: "AP01", name: "Apprentice Plumber - 1"},
  {code: "AP02", name: "Apprentice Plumber - 2"},
  {code: "AP03", name: "Apprentice Plumber - 3"},
  {code: "AP04", name: "Apprentice Plumber - 4"}
  ])

test_site = Site.create(name: "Non-Public Work", address: "2112 8th St Nw", ip: "192.168.1.1")

test_rate = test_site.rates.create([
  {job: "AP01", pay: 85.05},
  {job: "AP02", pay: 93.50},
  {job: "AP03", pay: 95.85},
  {job: "AP04", pay: 99.99}
  ])

test_user = User.create(fst_name: "Ross", lst_name: "Davis", username: "rdavis", job_code: "AP04")
