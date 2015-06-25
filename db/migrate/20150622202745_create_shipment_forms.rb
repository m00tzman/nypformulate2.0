class CreateShipmentForms < ActiveRecord::Migration
  def change
    create_table :shipment_forms do |t|
      t.integer :shipment_id
      t.integer :form_id

      t.timestamps null: false
    end
  end
end
