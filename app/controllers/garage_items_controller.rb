class GarageItemsController < ApplicationController

	def index
		@garage_items = GarageItem.all
	end

	def new
		@new_garage_item = GarageItem.new
	end

	def create
		@new_garage_item = GarageItem.new(garage_item_params)
		if @new_garage_item.save
			redirect_to garage_items_path
		else
			redirect_to new_garage_item_path
		end
	end

	def show
		@garage_item = GarageItem.find(params[:id])
	end

	def edit
		@garage_item = GarageItem.find(params[:id])
	end

	def update
		@garage_item = GarageItem.find(params[:id])
		if @garage_item.update_attributes(garage_item_params)
				redirect_to garage_item_path(@garage_item)
		end
	end

	def destroy
		@garage_item = GarageItem.find(params[:id])
		if @garage_item.destroy
			redirect_to garage_items_path
		else
			redirect_to garage_item_path(@garage_item)
		end
	end

	def change_unsold
		@garage_item = GarageItem.find(params[:id])
		if @garage_item.unsold
			val = true
		else
			val = false
		end
		@garage_item.update_attributes(:unsold => val)
		redirect_to garage_items_path
	end

	# def status
	# 	if @garage_item.unsold = true
	# 		puts "Unsold"
	# 	else
	# 		puts "Sold"
	# 	end
	# end

	private

	def garage_item_params
		params.require(:garage_item).permit!
	end

end

