class TrucksController < ApplicationController
	def index
		@trucks = Truck.all
	end

	def show
		@truck = Truck.find(params[:id])
	end

	def new
		@truck = Truck.new
	end

	def create
		@truck = Truck.create(params[:truck])

		redirect_to trucks_path
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
		@truck = Truck.find(params[:id])
		@truck.destroy

		redirect_to trucks_path
	end
end
