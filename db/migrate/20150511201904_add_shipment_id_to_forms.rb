class AddShipmentIdToForms < ActiveRecord::Migration
  def change
    add_column :forms, :shipment_id, :integer
  end
end
