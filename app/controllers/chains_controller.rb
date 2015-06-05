class ChainsController < ApplicationController
	def index
		@chains = Chain.all

	end

	def view_all_chains
		@chains = Chain.all		
	end

	def show
		@chain = Chain.find params[:id]
	end

end
