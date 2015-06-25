class AddTruckNumberToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :truckNumber, :string
  end
end
