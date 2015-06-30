class ShipmentsController < ApplicationController
	
	def index
		@shipments = Shipment.all
	end

	def show
		@shipment = Shipment.find_by_id(params[:id])
		@skids = @shipment.skids
		@form = Form.find_by_id(params[:idr])
	end

	def new
		@shipment = Shipment.new
		@shipment.skids.build
		@form = Form.new
	end

	def create
		@shipment = Shipment.new(params[:shipment])
		@form = Form.new(params[:form])

		if @shipment.save
			redirect_to shipment_path(@shipment)
		else
			render :new
		end
	end

	def edit
		@shipment = Shipment.find_by_id(params[:id])
		@skids = @shipment.skids
	end

	def update
		@shipment = Shipment.find_by_id(params[:id])

		if @shipment.update_attributes(shipment_params)
			redirect_to shipment_path(@shipment)
		else
			render :new
		end
	end

	def destroy
		@shipment = Shipment.find_by_id(params[:id])

		if @shipment.destroy
			redirect_to shipments_path
		else
			render :new
		end
		
	end

	def shipment_params
    	params.require(:shipment).permit(:date, :seal, :company, :trucker, :truckernumber, :deliverydate, :day, :truckNumber, skids_attributes: [:id, :shipment_id, :number, :product, :po, :cases, :weight, :_destroy])
  	end
end