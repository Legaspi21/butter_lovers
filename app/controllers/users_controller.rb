class UsersController < ApplicationController


	def show
		@user = current_user
	end

	def new
		@user = User.new
	end

	def edit
  	@user = current_user
	end

	def create
		@user = User.new(users_params)
		if @user.save
			flash[:notice] = "You have successfully signed up."
			login
			redirect_to root_path
		else
			@errors = @user.errors.full_messages
			render :new
		end
	end

	def update
		@user = current_user

		if @user.update(users_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		
	end



private

	def users_params
		params.require(:user).permit(:username, :email, :password)
	end



end