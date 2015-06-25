class ChangeTotalCasesAmountInTable < ActiveRecord::Migration
  def up
    change_column :shipments, :totalcases, :integer, :default => 0
  end

  def down
    change_column :shipments, :totalcases, :string
  end

end
