# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n| 
	Movie.create(title: "Star Wars#{n+1}", description: "luke skywalker#{n+1}", category: "#{n < 10 ? "comedy" : "drama"}") 
end 