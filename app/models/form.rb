class Form < ActiveRecord::Base
	has_many :shipment_forms
	has_many :shipments, through: :shipment_forms
end
