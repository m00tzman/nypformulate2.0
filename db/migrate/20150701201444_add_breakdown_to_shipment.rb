class AddBreakdownToShipment < ActiveRecord::Migration
  def change
    add_column :shipments, :breakdown, :string
  end
end
