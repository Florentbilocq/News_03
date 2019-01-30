# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Link.destroy_all
PrimaryComment.destroy_all
SecondaryComment.destroy_all

#Crée 40 étudiants random et leur attribue un cours
15.times do
  user = User.create!(name: Faker::Pokemon.name)
end

#Crée 30 liens random et leur attribue un utilisateur
30.times do
  link = Link.create!(url: Faker::Internet.url, user: User.find(rand(1..15)))
end

#Crée 50 commentaires random et leur attribue un utilisateur et un lien
50.times do
  primary_comment = PrimaryComment.create!(body: Faker::Markdown.emphasis, user: User.find(rand(1..15)), link: Link.find(rand(1..30)))
end

#Crée 100 sous-commentaires random et leur attribue un utilisateur et un commentaire
100.times do
  secondary_comment = SecondaryComment.create!(body: Faker::Markdown.emphasis, user: User.find(rand(1..15)), primary_comment: PrimaryComment.find(rand(1..50)))
end
