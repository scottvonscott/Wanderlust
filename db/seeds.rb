# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ruby encoding: utf -8

Destination.create(city: "Paris", country: "France", continent: "Europe",primary_language: "French")
Destination.create(city: "Rome", country: "Italy", continent: "Europe",primary_language: "Italian")
Destination.create(city: "London", country: "United Kingdom", continent: "Europe",primary_language: "English")
Destination.create(city: "Madrid", country: "Spain", continent: "Europe",primary_language: "Spanish")
Destination.create(city: "Amsterdsam", country: "Netherlands", continent: "Europe",primary_language: "Dutch")
Destination.create(city: "Athens", country: "Greece", continent: "Europe",primary_language: "Greek")
Destination.create(city: "Budapest", country: "Hungary", continent: "Europe",primary_language: "Hungarian")
Destination.create(city: "Moscow", country: "Russia", continent: "Europe",primary_language: "Russian")
Destination.create(city: "Tokyo", country: "Japan", continent: "Asia",primary_language: "Japanese")
Destination.create(city: "Beijing", country: "China", continent: "Asia",primary_language: "Mandarin")
Destination.create(city: "New York", country: "USA", continent: "North America",primary_language: "English")
Destination.create(city: "Berlin", country: "Germany", continent: "Europe",primary_language: "German")
Destination.create(city: "Oslo", country: "Norway", continent: "Europe",primary_language: "Norwegian")
Destination.create(city: "Lisbon", country: "Portugal", continent: "Europe",primary_language: "Portuguese")
Destination.create(city: "Mexico City", country: "Mexico", continent: "Europe",primary_language: "Spanish")
Destination.create(city: "Toronto", country: "Canada", continent: "North America",primary_language: "English")
Destination.create(city: "Lima", country: "Peru", continent: "South America",primary_language: "Spanish")
Destination.create(city: "Havana", country: "Cuba", continent: "North America",primary_language: "Spanish")
Destination.create(city: "Chicago", country: "USA", continent: "North America",primary_language: "English")
Destination.create(city: "Venice", country: "Italy", continent: "Europe",primary_language: "Italian")
Destination.create(city: "Vienna", country: "Austria", continent: "Europe",primary_language: "German")


Trip.create(title: "My trip to Paris", days_duration: 5, user_id: 1)
Itinerary.create(day_of_trip: 1, date: Time.now, trip_id: 1)
Attraction.create(name: "The Lourve", description: "All the Art", destination_id: 1, itinerary_id: 1)
Comment.create(body: "I waited in line for six hours!", user_id: 1, attraction_id: 1)

