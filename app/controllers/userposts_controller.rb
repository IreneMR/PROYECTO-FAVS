class UserpostsController < ApplicationController
	def index
		@chain = Chain.find(params[:chain_id])
		@userposts = @chain.userposts
	end

	def create	
		comment = params[:comment]
		user = params[:user]
		city = params[:city]

		chain = Chain.find(params[:chain_id])
		chain.userposts.create comment: comment, user: user, city: city

		render json: 1
	end
end
