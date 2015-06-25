class ChangeWeightDataTypeInSkids < ActiveRecord::Migration
  def up
    change_column :skids, :weight, :integer, :default => 0
  end

  def down
    change_column :skids, :weight, :string
  end

end
