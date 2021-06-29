# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database"

Event.destroy_all
User.destroy_all
Participant.destroy_all

puts "Database cleaned, now create users"

rachel = User.new(name: "Rachel", email: "rachel@gmail.com", password: "rachel")
rachel.save!

puts "User created, now create events"

event = Event.new(gift_amount: 50, event_date: DateTime.parse("05/07/2021 19:30") )
event.user = rachel
event.save!

event2 = Event.new(gift_amount: 30, event_date: DateTime.parse("10/07/2021 21:00") )
event2.user = rachel
event2.save!

puts "Events created, now create participants"

louise = Participant.new(name: "Louise", email: "louise@gmail.com")
louise.user = rachel
louise.event = event
louise.save!

arnaud = Participant.new(name: "Arnaud", email: "arnaud@gmail.com")
arnaud.user = rachel
arnaud.event = event
arnaud.save!

julien = Participant.new(name: "Julien", email: "julien@gmail.com")
julien.user = rachel
julien.event = event2
julien.save!

puts "All well created ! youpi !"