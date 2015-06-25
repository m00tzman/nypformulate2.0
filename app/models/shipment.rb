class Shipment < ActiveRecord::Base
	has_many :skids, dependent: :destroy
	has_many :shipment_forms
	has_many :shipments, through: :shipment_forms
	accepts_nested_attributes_for :skids, :reject_if => :all_blank, :allow_destroy => true
end
