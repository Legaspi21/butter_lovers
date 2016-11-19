class ReviewsController < ApplicationController
	before_action :current_user, only: [:create]


	def create
		@movie = Movie.find_by_id(params[:movie_id])
		
		@review = Review.new(review_params)
		@review.user = @current_user
		@review.movie = @movie


		if @review.save
			if request.xhr?
				p @review
				render partial: '/movies/review', locals: {review: @review}
			else
				redirect_to movie_path(@movie)
			end
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