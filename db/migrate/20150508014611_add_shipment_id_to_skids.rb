class AddShipmentIdToSkids < ActiveRecord::Migration
  def change
    add_column :skids, :shipment_id, :integer
  end
end
