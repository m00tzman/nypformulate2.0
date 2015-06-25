class FormsController < ApplicationController
	def show
		@shipment = Shipment.find_by_id(params[:id])
		@skids = @shipment.skids
		@form = @shipment.form
	end
end