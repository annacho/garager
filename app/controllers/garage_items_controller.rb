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
		if @item.update_attributes(garage_item_params)
				redirect_to "/garage_items"
			end
		end

	private

	def garage_item_params
		params.require(:garage_item).permit!
	end

end

