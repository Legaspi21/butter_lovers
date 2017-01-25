class MoviesController < ApplicationController
  before_action :current_user, only: [:show]

	def index 
	  @movie_title = params[:movie_title]
    if @movie_title
      @movies = Movie.search(@movie_title)
      render :index
    else 
      @movies = Movie.all
    end
	  @category = params[:category]
	  if @category
		  @movies = Movie.where("category like ?", "%#{@category.capitalize}%")
	  else 
		  @movies = Movie.all
	  end 
	end 

	def show
		@movie = Movie.find(params[:id])
		@review = Review.new
		@comment = Comment.new
		# @reviews = @movie.reviews.sort {|a,b| (a.user.is_critic <=> b.user.is_critic}
		@reviews = @movie.reviews.sort_by {|a| a.user.is_critic ? 0 : 1 }
		@comments = @movie.comments
	end 
end 

    
