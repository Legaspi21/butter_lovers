class Movie < ApplicationRecord

	has_many :reviews, dependent: :destroy

	has_many :comments, as: :commentable, dependent: :destroy

	def self.search(movie_title)
   	where("title ILIKE ? ", "%#{movie_title}%") 
 	end



end
