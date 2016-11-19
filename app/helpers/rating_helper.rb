module RatingHelper

	def average_rating(reviews)
		if reviews && reviews.size > 0
			return (reviews.reduce(0) {|sum, review| sum += review.rating  } / (reviews.size).to_f).ceil
		else
			return 0
		end
	end

	def favorite_movies(user)
		user.reviews.select { |review| review.rating == 5 }
		.map { |review| review.movie }
	end

end
