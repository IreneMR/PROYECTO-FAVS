class ChainsController < ApplicationController
	def index
		@chains = Chain.all

	end

	def show
		@chain = Chain.find params[:id]
	end

	def landing
		
		
	end

end
