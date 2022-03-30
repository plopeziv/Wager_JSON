# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bet.destroy_all
User.destroy_all

pedro = User.create(
    {userId: "Plopez23", name: "Pedro", accountBalance: 300.00})

matt = User.create(
    {userId: "Mreadout14", name: "Matt", accountBalance: 200.00})

dave = User.create(
    {userId: "Dtorre8", name: "Dave", accountBalance: 400.00})

Bet.create(
    {betId: "plopez23-1033", gameId: "Kentucky764", chosenTeam: "Kentucky", wager: 25.00, user: pedro})

Bet.create(
    {betId: "plopez23-1213", gameId: "Illinois375", chosenTeam: "Loyola", wager: 20.00, user: pedro})

Bet.create(
    {betId: "mreadout14-1077", gameId: "Villanova513", chosenTeam: "Ohio State", wager: 50.00, user: matt})