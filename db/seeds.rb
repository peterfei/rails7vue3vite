# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  content = Faker::Lorem.paragraph(sentence_count: rand(50..100), random_sentences_to_add: rand(10..20))
  Blog.create(
    title: Faker::Lorem.unique.sentence(word_count: rand(2..4)).split('.').join(''),
    desc: content,
  )
end