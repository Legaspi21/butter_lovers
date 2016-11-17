# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do |n| 
# 	Movie.create(title: "Star Wars#{n+1}", description: "luke skywalker#{n+1}", category: "#{n < 10 ? "comedy" : "drama"}") 
# end 

movie_titles = ["Sixteen Candles", "Exit through the Gift Shop", "Nymphomaniac: Volume I", "Results", "Meek’s Cutoff", "Jesus Camp", "Dope", "Tinker Tailor Soldier Spy", "Chef", "Grizzly Man", "Gladiator", "Philomena", "I Am Love", "Seymour: An Introduction", "Top Gun", "Blue is the Warmest Color", "Short Term 12", "Wet Hot American Summer", "The Big Short", "Heaven Knows What", "Frank", "Breathe", "Phoenix", "Scrooged", "Zack and Miri Make a Porno", "A Hijacking", "Muscle Shoals", "Ain’t Them Bodies Saints", "Swingers", "The Look of Silence", "Coming To America", "Force Majeure", "The Trip", "Frances Ha", "The Imitation Game", "The Babadook", "Gomorrah", "Iris", "Clueless", "Following", "Hot Fuzz", "Nightcrawler", "Saving Private Ryan", "American Beauty", "Chasing Amy", "Bernie", "Janis: Little Girl Blue", "Beginners", "Big Trouble In Little China", "Zootopia", "The African Queen", "Three Kings", "Good Will Hunting", "Mustang", "In the Loop", "The Act of Killing", "Two Days, One Night", "Jiro Dreams of Sushi", "Clerks", "The Sting", "Tell No One", "Fist of Legend", "Spotlight", "The Hustler", "To Kill a Mockingbird", "Time Out of Mind", "Sling Blade", "Django Unchained", "The Conformist", "Sunset Boulevard", "Unforgiven", "13th", "The Usual Suspects", "Waking Ned Devine", "Y Tu Mama Tambien", "Fruitvale Station", "Shakespeare in Love", "Cinema Paradiso", "Kagemusha", "Pirates of the Caribbean: The Curse of the Black Pearl", "Laura", "Beasts of No Nation", "True Grit", "Dazed and Confused", "Eternal Sunshine of the Spotless Mind", "Metropolis", "Ferris Bueller’s Day Off", "White God", "Cartel Land", "Trainspotting", "Man on Wire", "Once Upon a Time in the West", "The Princess Bride", "Amélie", "The Thin Blue Line", "Reservoir Dogs", "Moonrise Kingdom", "No Country For Old Men", "Pulp Fiction"]




result = []

movie_titles.each do |x|
	if OMDB.title(x).response != "False"
		result << OMDB.title(x)		
	end
end

result.each do |movie|
	Movie.create(title: movie.title, description: movie.plot, category: movie.genre,director:movie.director,rated:movie.rated,release_date:movie.released,poster:movie.poster,actors:movie.actors,runtime:movie.runtime)
end



puts "database seed success"

# Sample JSON response

# {:title=>"Blow", :year=>"2001", :rated=>"R", :released=>"06 Apr 2001", :runtime=>"124 min", :genre=>"Biography, Crime, Drama", :director=>"Ted Demme", :writer=>"Bruce Porter (book), David McKenna (screenplay), Nick Cassavetes (screenplay)", :actors=>"Johnny Depp, Penélope Cruz, Franka Potente, Rachel Griffiths", :plot=>"The story of George Jung, the man who established the American cocaine market in the 1970s.", :language=>"English", :country=>"USA", :awards=>"2 wins & 9 nominations.", :poster=>"https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ5ODQwNzIxNV5BMl5BanBnXkFtZTYwNzAyMDE3._V1_SX300.jpg", :metascore=>"52", :imdb_rating=>"7.6", :imdb_votes=>"200,460", :imdb_id=>"tt0221027", :type=>"movie", :response=>"True"}


#How I scraped an array of movies from https://www.pastemagazine.com/articles/2016/06/the-100-best-movies-on-netflix-june-2016.html

# $('.big > a').map(function(){
#                return $.trim($(this).text());
#             }).get();

