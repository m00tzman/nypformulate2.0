class Form < ActiveRecord::Base
	has_many :shipment_forms
	belongs_to :shipment
end
