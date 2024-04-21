# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# bundle exec rake db:seed

seeds_file = Rails.root.join('db', 'seeds', "#{Rails.env.downcase}.rb")
File.exist?(seeds_file) && load(seeds_file)

if Concert.count.zero?
  10.times do |i|
    Concert.create(
      date: Time.zone.now + i.days,
      price: Faker::Number.decimal(l_digits: 2),
      bands: [Faker::Music.band, Faker::Music.band],
      city: Faker::Address.city,
      country: Faker::Address.country,
      description: Faker::Lorem.paragraph,
      genres: [Faker::Music.genre, Faker::Music.genre],
      venue: Faker::Music.album
    )
  end
end
