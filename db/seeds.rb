# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create!([
    {
        name: "Stuart McKenzie",
        image: "http://placehold.it/80x80"
    },    
    {
        name: "Elle Tweedy",
        image: "http://placehold.it/80x80"
    },    
    {
        name: "Chris Evans",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Chris Wensley",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Jenny Thai",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Ashley O'Callaghan",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Ashley Evans",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Dom Freeman",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Jaye Hackett",
        image: "http://placehold.it/80x80"
    },
    {
        name: "Joe Bramall",
        image: "http://placehold.it/80x80"
    },
])

40.times do |i|
    Compliment.create(
        :person => Person.order("RANDOM()").first,
        :body => "Pretty great",
        :attribution => "No"
    )
end