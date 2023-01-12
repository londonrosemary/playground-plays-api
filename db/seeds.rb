# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Play.destroy_all
Monologue.destroy_all

user1 = User.create({ first_name: "Londog", last_name: "Millionaire", email: "london.rosemary@gmail.com", password: "123", admin: true})
user2 = User.create({ first_name: "Trixie", last_name: "Mattel", email: "london.rosemary.webapps@gmail.com", password: "456", admin: false})

play1 = Play.create({name: "Me and My Wig", author: "Milo Sandrowski", genre: "Drama", length: "2 Acts", num_character: 17, time_period: "Classical", copy_avail: true, synopsis: "This a play about a lonely college student in a world after 'The Ending.' This student finds friendship through their wig."})
play2 = Play.create({name: "Florida Man", author: "Tramar Lacel Dillard", genre: "Comedy", length: "One Act", num_character: 1, time_period: "Contemporary", copy_avail: false, synopsis: "This is a comedic retelling of Flo Rida's rise to fame."})

monologue1 = Monologue.create({name: "Scene 5", content: "So that's when I decided I could win in a fight against a Gator...", genre: "Drama", length: "55-65 Seconds", age: "Adult 30-40", gender: "Male", is_copy_available: true, char_name: "Tramar", play_id: play2.id})
monologue2 = Monologue.create({name: "Act I Scene 1", content: "I told her I would never be the first to be cut. Never again.", genre: "Comedy", length: "45-55 Seconds", age: "Adult 18-25", gender: "Female", is_copy_available: true, char_name: "Miranda", play_id: play1.id})
