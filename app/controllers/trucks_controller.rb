class TrucksController < ApplicationController
# 	    trucks GET    /trucks(.:format)          trucks#index
#            POST   /trucks(.:format)          trucks#create
#  new_truck GET    /trucks/new(.:format)      trucks#new
# edit_truck GET    /trucks/:id/edit(.:format) trucks#edit
#      truck GET    /trucks/:id(.:format)      trucks#show
#            PUT    /trucks/:id(.:format)      trucks#update
#            DELETE /trucks/:id(.:format)      trucks#destroy
#       root        /                          trucks#index

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
			redirect_to truck_path(@truck)
		end
	end

	def destroy
		@truck = Truck.find(params[:id])
		@truck.destroy

		redirect_to trucks_path
	end
end
