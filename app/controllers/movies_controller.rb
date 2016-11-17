class MoviesController < ApplicationController


	def index 
		# Movie.where("category like ?", "%comedy%")
	@category = params[:category]
		if @category
			@movies = Movie.where(category: @category)
		else 
			@movies = Movie.all
		end 
	end 

	def show
		@movie = Movie.find(params[:id])
	end 

end 

