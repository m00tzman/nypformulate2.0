class AddDayToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :day, :string
  end
end
