class ShipmentForm < ActiveRecord::Base
	belongs_to :shipment 
	belongs_to :form
end
