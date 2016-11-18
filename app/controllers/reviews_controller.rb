class ReviewsController < ApplicationController
	before_action :current_user, only: [:create]


	def create
		p params
		
		@movie = Movie.find_by_id(params[:movie_id])
		p @movie
		p "*"*60
		@review = Review.new(review_params)
		@review.user = @current_user
		@review.movie = @movie

		if @review.save
			redirect_to movie_path(@movie)
		else
			flash[:notice] = "Please fill out the information the post a review!"
			redirect_to movie_path(@movie.id)
		end
	end


private

	def review_params
		params.require(:review).permit(:body, :rating, :movie_id)
	end



end