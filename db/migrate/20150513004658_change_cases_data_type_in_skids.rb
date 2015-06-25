class ChangeCasesDataTypeInSkids < ActiveRecord::Migration
  def up
    change_column :skids, :cases, :integer, :default => 0
  end

  def down
    change_column :skids, :cases, :string
  end

end
