class AddBreakdownToSkid < ActiveRecord::Migration
  def change
    add_column :skids, :breakdown, :string
  end
end
