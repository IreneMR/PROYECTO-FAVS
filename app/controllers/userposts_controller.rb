class UserpostsController < ApplicationController
	def index
		@chain = Chain.find(params[:chain_id])
		@userposts = @chain.userposts
	end
end
