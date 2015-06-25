class FormsController < ApplicationController
	def show
		@shipment = Shipment.find_by_id(params[:id])
		@skids = @shipment.skids
		@form = Form.find_by_id(params[:id])
	end
end