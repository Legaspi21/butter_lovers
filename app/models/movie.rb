class Movie < ApplicationRecord

	has_many :reviews

	has_many :comments, as: :commentable

	def self.search(movie_title)
   	where("title ILIKE ? ", "%#{movie_title}%") 
 	end

end
