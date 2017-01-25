# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(0...5).each do |i|
  TimeEntry.create(start_time: i.minutes.from_now, end_time: i.minutes.from_now)
  Project.create(title: Faker::Team.name)
  Task.create(name: Faker::StarWars.planet)
end
