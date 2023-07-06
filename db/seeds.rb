# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

player1 = Player.create(name: "Klay Thompson", age: "32")
player2 = Player.create(name: "Stephen Curry", age: "35")
player3 = Player.create(name: "Travis Kelce", age: "26")
player4 = Player.create(name: "Patrick Mahomes", age: "27")
player5 = Player.create(name: "Neymar", age: "31")
player6 = Player.create(name: "Kylian Mbappe", age: "24")

team1 = Team.create(name: "Golden State Warriors", location: "San Francisco")
team2 = Team.create(name: "Kansas City Chiefs", location: "Kansas")
team3 = Team.create(name: "Paris Saint Germain", location: "Paris")

league1 = League.create(name: "NBA", team: team1, player: player1, player2)
league2 = League.create(name: "FIFA", team: team3, player: player5, player6)
league3 = League.create(name: "NFL", team: team2, player: player3, player4)
