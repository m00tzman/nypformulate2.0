class ChangeTotalWeightDataTypeInShipments < ActiveRecord::Migration
  def up
    change_column :shipments, :totalweight, :integer, :default => 0
  end

  def down
    change_column :shipments, :totalweight, :string
  end
end
