class MoviesController < ApplicationController


	def index 
		# Movie.where("category like ?", "%comedy%")
	p params
	@movie_title = params[:movie_title]
  if @movie_title
      @movies = Movie.search(@movie_title)
      render :index
  else 
      @movies = Movie.all
  end

	@category = params[:category]

		if @category
			@movies = Movie.where("category like ?", "%#{@category}%")
		else 
			@movies = Movie.all
		end 
	end 

	def show
		@movie = Movie.find(params[:id])
		@review = Review.new
	end 

end 

