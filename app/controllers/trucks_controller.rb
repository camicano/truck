class TrucksController < ApplicationController
	def index
		@trucks = Truck.all
	end

	def show
		@truck = Truck.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
		@truck = Truck.find(params[:id])
	end

	def update
		@truck = Truck.find(params[:id])
		if @truck.update(params[:truck])
			redirecto_to(@truck)
		end
	end

	def destroy
	end
end
