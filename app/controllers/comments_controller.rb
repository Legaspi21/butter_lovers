class CommentsController < ApplicationController
	before_action :current_user, only: [:create]

	def create

		@movie = Movie.find_by_id(params[:movie_id])
		
		@comment = Comment.new(comment_params)
		@comment.user = @current_user
		@movie.comments << @comment

		if @comment.save
			redirect_to movie_path(@movie)
		else
			flash[:notice] = "Please fill out the information the post a comment!"
			redirect_to movie_path(@movie.id)
		end

	end

private

	def comment_params
		params.require(:comment).permit(:body, :movie_id)
	end


end