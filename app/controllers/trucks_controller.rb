class TrucksController < ApplicationController
	def index
	end

	def show
	end

	def new
		@truck = Truck.new
	end

	def create
		@truck = Truck.create(params[:truck])

		redirect_to trucks_path
	end

	def edit
	end

	def update
	end

	def destroy
		@truck = Truck.find(params[:id])
		@truck.destroy

		redirect_to trucks_path
	end
end
