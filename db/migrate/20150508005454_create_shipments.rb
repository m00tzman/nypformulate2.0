class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :date
      t.string :seal
      t.string :company
      t.string :trucker
      t.string :truckernumber
      t.string :totalcases
      t.string :totalweight
      t.string :deliverydate

      t.timestamps null: false
    end
  end
end
