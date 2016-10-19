class UsersController < ApplicationController


	def new
		
	end

	def profile
		@users = User.find(params[:id])
	end

	def create
		n_user = User.new(email: params[:email], name: params[:name], password: params[:password])
		flash[:error] = []
		if n_user.save
			redirect_to '/users'
		else 
			flash[:error] = n_user.errors.full_messages
			redirect_to '/users'
		end
	end

	


end


# private 
# 	def user_all
# 		params.require(:user).permit(:email, :name, :password)
# 	end
# end